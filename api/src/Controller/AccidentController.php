<?php

namespace App\Controller;

use App\Entity\Accident;
use App\Repository\AccidentRepository;
use DateTime;
use Doctrine\ORM\EntityManagerInterface;
use FOS\RestBundle\Controller\AbstractFOSRestController;
use FOS\RestBundle\Request\ParamFetcher;
use Negotiation\Accept;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use FOS\RestBundle\Controller\Annotations\RequestParam;
use FOS\RestBundle\Controller\Annotations as Rest;
class AccidentController extends AbstractFOSRestController
{
    /**
     * @var AccidentRepository
     */
    private $accidentRepository;
    /**
     * @var EntityManagerInterface
     */
    private $entityManager;

    public function __construct( AccidentRepository $accidentRepository, EntityManagerInterface $entityManager)
    {
        $this->accidentRepository = $accidentRepository;
        $this->entityManager = $entityManager;
    }

    /**
     * @return \FOS\RestBundle\View\View
     */
    public function getAccidentsAction(){
        $data =$this->accidentRepository->findAll();
        return $this->view($data, Response::HTTP_OK);
    }
    /**
     * @param Accident $accident
     * @return \FOS\RestBundle\View\View
     */
    public function getAccidentAction(Accident $accident)
    {
        $data = $accident;
        return $this->view($data, Response::HTTP_OK);
    }

    
    /**
     * @Rest\RequestParam(name="date")
     * @Rest\RequestParam(name="governorat")
     * @Rest\RequestParam(name="delegation")
     * @Rest\RequestParam(name="latitude")
     * @Rest\RequestParam(name="longitude")
     * @Rest\RequestParam(name="pointKilometrique")
     * @Rest\RequestParam(name="route")
     * @Rest\RequestParam(name="nbrVictime")
     * @Rest\RequestParam(name="nbrTuee")
     * @Rest\RequestParam(name="nbrBlesse")
     * @Rest\RequestParam(name="causeAccident")
     * @Rest\RequestParam(name="typeAccident")
     * @Rest\FileParam(name="photoPath", nullable=true, image=true)
     * @param ParamFetcher $paramFetcher
     * @param Request $request
     * @return \FOS\RestBundle\View\View
     */
    public function postAccidentAction(ParamFetcher $paramFetcher,Request $request)
    {

            $date = $paramFetcher->get('date');
            $governorat = $paramFetcher->get('governorat');
            $delegation = $paramFetcher->get('delegation');
            $latitude = $paramFetcher->get('latitude');
            $longitude = $paramFetcher->get('longitude');
            $pointKilometrique = $paramFetcher->get('pointKilometrique');
            $route = $paramFetcher->get('route');
            $nbrVictime = $paramFetcher->get('nbrVictime');
            $nbrTuee = $paramFetcher->get('nbrTuee');
            $nbrBlesse = $paramFetcher->get('nbrBlesse');
            $causeAccident = $paramFetcher->get('causeAccident');
            $typeAccident = $paramFetcher->get('typeAccident');
            $photoPath = $paramFetcher->get('photoPath');
             
            if($date&&$governorat&&$delegation &&$latitude&&$longitude&&$pointKilometrique
                &&$nbrVictime&&$nbrTuee&&$nbrBlesse&&$causeAccident&&$typeAccident&& $route ){
                $accident = new Accident();
                $accident->setDate(new DateTime($date));
                $accident->setGovernorat($governorat);
                $accident->setDelegation($delegation);
                $accident->setLatitude($latitude);
                $accident->setLongitude( $longitude);
                $accident->setPointKilometrique($pointKilometrique);
                $accident->setRoute($route);
                $accident->setNbrVictime($nbrVictime);
                $accident->setNbrBlesse($nbrBlesse);
                $accident->setNbrTuee($nbrTuee);
                $accident->setCauseAccident($causeAccident);
                $accident->setTypeAccident($typeAccident);
                if($photoPath){
                  $accident=  $this->uploadPhoto( $request,  $photoPath, $accident);
                }
                $this->entityManager->persist($accident);
                $this->entityManager->flush();
                return $this->view(['message' => 'mriguel'], Response::HTTP_OK);
            }
        return $this->view(['message' => 'Something went wrong'], Response::HTTP_INTERNAL_SERVER_ERROR);
    }
    /**
     * @Rest\RequestParam(name="date")
     * @Rest\RequestParam(name="governorat")
     * @Rest\RequestParam(name="delegation")
     * @Rest\RequestParam(name="latitude")
     * @Rest\RequestParam(name="longitude")
     * @Rest\RequestParam(name="pointKilometrique")
     * @Rest\RequestParam(name="route")
     * @Rest\RequestParam(name="nbrVictime")
     * @Rest\RequestParam(name="nbrTuee")
     * @Rest\RequestParam(name="nbrBlesse")
     * @Rest\RequestParam(name="causeAccident")
     * @Rest\RequestParam(name="typeAccident")
     * @Rest\FileParam(name="photoPath", nullable=true)
     * @param Accident $accident
     * @param ParamFetcher $paramFetcher
     * @param Request $request
     * @return \FOS\RestBundle\View\View
     */
    public function putAccidentAction(ParamFetcher $paramFetcher,Request $request, Accident $accident)
    {
        if($accident){
            $date = $paramFetcher->get('date');
            $governorat = $paramFetcher->get('governorat');
            $delegation = $paramFetcher->get('delegation');
            $latitude = $paramFetcher->get('latitude');
            $longitude = $paramFetcher->get('longitude');
            $pointKilometrique = $paramFetcher->get('pointKilometrique');
            $route = $paramFetcher->get('route');
            $nbrVictime = $paramFetcher->get('nbrVictime');
            $nbrTuee = $paramFetcher->get('nbrTuee');
            $nbrBlesse = $paramFetcher->get('nbrBlesse');
            $causeAccident = $paramFetcher->get('causeAccident');
            $typeAccident = $paramFetcher->get('typeAccident');
            $photoPath = $paramFetcher->get('photoPath'); 
            if($date&&$governorat&&$delegation &&$latitude&&$longitude&&$pointKilometrique
                &&$nbrVictime&&$nbrTuee&&$nbrBlesse&&$causeAccident&&$typeAccident&& $route ){
                $accident->setDate($date);
                $accident->setGovernorat($governorat);
                $accident->setLatitude($latitude);
                $accident->setLongitude( $longitude);
                $accident->setPointKilometrique($pointKilometrique);
                $accident->setRoute($route);
                $accident->setNbrVictime($nbrVictime);
                $accident->setNbrBlesse($nbrBlesse);
                $accident->setNbrTuee($nbrTuee);
                $accident->setCauseAccident($causeAccident);
                $accident->setTypeAccident($typeAccident);
                if($photoPath){
                  $accident=  $this->uploadPhoto( $request,  $photoPath, $accident);
                }
                $this->entityManager->persist($accident);
                $this->entityManager->flush();
                return $this->view(['message' => 'mriguel'], Response::HTTP_OK);
            }
        }

        return $this->view(['message' => 'Something went wrong'], Response::HTTP_INTERNAL_SERVER_ERROR);
    }

    /**
     * @param Accident $accident
     * @return \FOS\RestBundle\View\View
    */
    public function deleteTestdataAction(Accident $accident){
        $this->entityManager->remove($accident);
        $this->entityManager->flush();    
        return $this->view(null, Response::HTTP_NO_CONTENT);
    }

/////////////////////////////////////////
    private function uploadPhoto(Request $request, $path, Accident $accident)
    {
        $currentpic = $path;
        if (!is_null($currentpic)) {
            $filesystem = new Filesystem();
            $filesystem->remove(
                $this->getUploadsDir() . $currentpic
            );
        }

        /** @var UploadedFile $file */
        $file = ($path);

        if ($file) {
            $filename = $accident->getDate()->format('Y-m-d-H:i:s'). '.' . $file->guessClientExtension();
            $file->move(
                $this->getUploadsDir(),
                $filename
            );

            $accident->setPhotoPath('/uploads/' . $filename);


            /*$data = $request->getUriForPath(
                $accident->getPhotoPath()
            );*/

            return $accident;
        }

    }
    ////////////////////////////////////
    private function getUploadsDir()
    {
        return $this->getParameter('uploads_dir');
    }


}
