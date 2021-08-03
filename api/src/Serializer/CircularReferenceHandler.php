<?php

namespace App\Serializer;
use App\Entity\User;
use Symfony\Component\Routing\RouterInterface;

class CircularReferenceHandler
{


    /**
     * @var RouterInterface
     */
    private $router;

    public function __construct(RouterInterface $router)
    {
        $this->router = $router;
    }
    
  public function __invoke($object)
    {
      switch ($object) {
            case $object instanceof User:
                return $this->router->generate('get_user',  ['id' => $object->getId()]);
              }
     return $object->getId();
    }

    
}
