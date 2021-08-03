<?php

namespace App\Controller;

use FOS\RestBundle\Controller\AbstractFOSRestController;
use FOS\RestBundle\Controller\Annotations as Rest;
use FOS\RestBundle\Controller\Annotations\Route;
use Doctrine\ORM\EntityManagerInterface;
use FOS\RestBundle\Request\ParamFetcher;
use FOS\RestBundle\Controller\Annotations\RequestParam;
use FOS\RestBundle\Controller\Annotations\QueryParam;
use FOS\RestBundle\Controller\Annotations\FileParam;
use Symfony\Component\Validator\Constraints;
use Acme\FooBundle\Validation\Constraints\MyComplexConstraint;
use App\Entity\User;
use App\Repository\UserRepository;
use DateTimeInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserController extends AbstractFOSRestController
{
    /**
     * @var UserRepository
     */
    private $userRepository;
    /**
     * @var EntityManagerInterface
     */
    private $entityManager;
    /**
     * @var MailerInterface 
     */
    private $mailer;
    /**
     * @var UserPasswordEncoderInterface
     */
    private $passwordEncoder;
    public function __construct(UserPasswordEncoderInterface $passwordEncoder, UserRepository $userRepository, EntityManagerInterface $entityManager,MailerInterface $mailer)
    {
        $this->userRepository = $userRepository;
        $this->entityManager = $entityManager;
        $this->mailer= $mailer;
        $this->passwordEncoder = $passwordEncoder;
    }

    
    /**
     * @return \FOS\RestBundle\View\View
     */
    public function getUsersAction(){
        ini_set('max_execution_time', 0);
        ini_set('memory_limit', '-1');
        $data =$this->userRepository->findAll();
        return $this->view($data, Response::HTTP_OK);
    }
    
    /**
     * @param int $id
     * @return \FOS\RestBundle\View\View
     */
    public function getUserAction(int $id){

        $user=$this->userRepository->findOneBy(['id'=>$id]);
        return $this->view($user, Response::HTTP_OK);
    }

    /**
     * @param string $email
     * @return \FOS\RestBundle\View\View
     */
    public function getUser_emailAction(string $email){

        $user=$this->userRepository->findOneBy(['email'=>$email]);
        return $this->view($user, Response::HTTP_OK);
    }

    /**
      * @Rest\RequestParam(name="email")
      * @Rest\RequestParam(name="password")
      * @param ParamFetcher $paramFetcher
      * @param int $id
      * @return \FOS\RestBundle\View\View
      */
    public function putUsersAction(ParamFetcher $paramFetcher, int $id)
    {
        $errors = [];
        $user=$this->userRepository->findOneBy(['id'=>$id]);
        $email=$paramFetcher->get('email');
        $password=$paramFetcher->get('password');
        if($user){
            $user->setEmail($email);
            $user->setPassword(
                $this->passwordEncoder->encodePassword($user, $password)
            );
            $this->entityManager->persist($user);
            $this->entityManager->flush();
    
            return $this->view($user, Response::HTTP_OK);
        }
        $errors[] = [
            'user' => 'user not found'
        ];
    
        return $this->view($errors, Response::HTTP_NO_CONTENT);
    }


    public function deleteUsersAction(User $user){
        $this->entityManager->remove($user);
        $this->entityManager->flush();
        return $this->view(null, Response::HTTP_NO_CONTENT);
    }



    /**
     * @Rest\RequestParam(name="email")
     * @param ParamFetcher $paramFetcher
     * @return \FOS\RestBundle\View\View
     */
    public function postUser_fpAction(ParamFetcher $paramFetcher){
        $email = $paramFetcher->get('email');
        $user=$this->userRepository->findOneBy(['email'=>$email]);
        $password=$this->getPass(6);
        $user->setPassword(
            $this->passwordEncoder->encodePassword($user, $password)
        );
        $email = (new Email())
        ->from('aymounkefi1919@gmail.com')
        ->to($email)
        ->subject('Forgot your password?')
        ->text('Try this new password!')
        ->html('<p>Hello! <br> Try this new password :'.$password.'</p>');
        $this->entityManager->persist($user);
        $this->entityManager->flush();
        $this->mailer->send($email);

        return $this->view($user, Response::HTTP_OK);
    }

    function getPass($n) { 
        $characters = '0123456789abcdefghijklmnopqrstuvwxyz'; 
        $randomString = ''; 
      
        for ($i = 0; $i < $n; $i++) { 
            $index = rand(0, strlen($characters) - 1); 
            $randomString .= $characters[$index]; 
        } 
      
        return $randomString; 
    } 

}
