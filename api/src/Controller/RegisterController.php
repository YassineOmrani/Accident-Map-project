<?php

namespace App\Controller;

use App\Entity\User;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use FOS\RestBundle\Context\Context;
use FOS\RestBundle\Controller\AbstractFOSRestController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

/**
 * @Route("api", name="api_")
 */
class RegisterController extends AbstractFOSRestController
{
    /**
     * @var UserRepository
     */
    private $userRepository;
    /**
     * @var UserPasswordEncoderInterface
     */
    private $passwordEncoder;
    /**
     * @var EntityManagerInterface
     */
    private $entityManager;
    /**
     * @var MailerInterface 
     */
    private $mailer;

    public function __construct(MailerInterface $mailer,UserRepository $userRepository, UserPasswordEncoderInterface $passwordEncoder, EntityManagerInterface $entityManager)
    {
        $this->userRepository = $userRepository;
        $this->passwordEncoder = $passwordEncoder;
        $this->entityManager = $entityManager;
        $this->mailer= $mailer;
    }

    /**
     * @Route("/register", name="register")
     * @param Request $request
     * @return \FOS\RestBundle\View\View
     */
    public function index(Request $request)
    {
        $email = $request->get('email');
        $type = $request->get('type');
        $roles = $request->get('roles');
       // $password = $request->get('password');
        $password=$this->getPass(6);
        $user = $this->userRepository->findOneBy([
            'email' => $email,
        ]);

        if (!is_null($user)) {
            return $this->view([
                'message' => 'User already exists'
            ], Response::HTTP_CONFLICT);
        }
        $user = new User();
        $user->setEmail($email);
        $user->setType($type);
        $user->setPassword(
            $this->passwordEncoder->encodePassword($user, $password)
        );
        $user->setRoles($roles);
       /* $email = (new Email())
        ->from('aymounkefi1919@gmail.com')
        ->to($email)
        ->subject('Welcome to Tunisia EduExpo!')
        ->text('Try this new password!')
        ->html('<p><h3>Welcom to <b>Tunisia EduExpo!</b></h3> <br><br><h4> This is your password :  '.$password.'</h4></p>');

        $this->mailer->send($email);*/
        $this->entityManager->persist($user);
        $this->entityManager->flush();

        return $this->view($user, Response::HTTP_CREATED);
    }


    
    function getPass($n) { 
        $characters = '0123456789abcdefghijklmnopqrstuvwxyz'; 
        $randomString = ''; 
      
        for ($i = 0; $i < $n; $i++) { 
            $index = rand(0, strlen($characters) - 1); 
            $randomString .= $characters[$index]; 
        } 
        
        $randomString = "123456";
        return $randomString; 
    } 
}