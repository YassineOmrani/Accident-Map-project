<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\AccidentRepository")
 */
class Accident
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="datetime")
     */
    private $date;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $governorat;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $delegation;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $latitude;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $longitude;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $pointKilometrique;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $route;

    /**
     * @ORM\Column(type="integer")
     */
    private $nbrVictime;

    /**
     * @ORM\Column(type="integer")
     */
    private $nbrTuee;

    /**
     * @ORM\Column(type="integer")
     */
    private $nbrBlesse;

    /**
     * @ORM\Column(type="text")
     */
    private $causeAccident;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $typeAccident;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $photoPath;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDate(): ?\DateTimeInterface
    {
        return $this->date;
    }

    public function setDate(\DateTimeInterface $date): self
    {
        $this->date = $date;

        return $this;
    }

    public function getGovernorat(): ?string
    {
        return $this->governorat;
    }

    public function setGovernorat(string $governorat): self
    {
        $this->governorat = $governorat;

        return $this;
    }

    public function getDelegation(): ?string
    {
        return $this->delegation;
    }

    public function setDelegation(string $delegation): self
    {
        $this->delegation = $delegation;

        return $this;
    }

    public function getLatitude(): ?string
    {
        return $this->latitude;
    }

    public function setLatitude(string $latitude): self
    {
        $this->latitude = $latitude;

        return $this;
    }

    public function getLongitude(): ?string
    {
        return $this->longitude;
    }

    public function setLongitude(string $longitude): self
    {
        $this->longitude = $longitude;

        return $this;
    }

    public function getPointKilometrique(): ?string
    {
        return $this->pointKilometrique;
    }

    public function setPointKilometrique(string $pointKilometrique): self
    {
        $this->pointKilometrique = $pointKilometrique;

        return $this;
    }

    public function getRoute(): ?string
    {
        return $this->route;
    }

    public function setRoute(string $route): self
    {
        $this->route = $route;

        return $this;
    }

    public function getNbrVictime(): ?int
    {
        return $this->nbrVictime;
    }

    public function setNbrVictime(int $nbrVictime): self
    {
        $this->nbrVictime = $nbrVictime;

        return $this;
    }

    public function getNbrTuee(): ?int
    {
        return $this->nbrTuee;
    }

    public function setNbrTuee(int $nbrTuee): self
    {
        $this->nbrTuee = $nbrTuee;

        return $this;
    }

    public function getNbrBlesse(): ?int
    {
        return $this->nbrBlesse;
    }

    public function setNbrBlesse(int $nbrBlesse): self
    {
        $this->nbrBlesse = $nbrBlesse;

        return $this;
    }

    public function getCauseAccident(): ?string
    {
        return $this->causeAccident;
    }

    public function setCauseAccident(string $causeAccident): self
    {
        $this->causeAccident = $causeAccident;

        return $this;
    }

    public function getTypeAccident(): ?string
    {
        return $this->typeAccident;
    }

    public function setTypeAccident(string $typeAccident): self
    {
        $this->typeAccident = $typeAccident;

        return $this;
    }

    public function getPhotoPath(): ?string
    {
        return $this->photoPath;
    }

    public function setPhotoPath(?string $photoPath): self
    {
        $this->photoPath = $photoPath;

        return $this;
    }
}
