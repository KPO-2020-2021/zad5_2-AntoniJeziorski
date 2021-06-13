#include "scene.hh"

/*!
 *
 * \file scene.cpp
 * \brief Plik zawierajacy definicje metod klasy Scene
 */

Scene::Scene() {

    double tab[3] = {10,8,6}, l1[3] = {20,20,3}, l2[3] = {50,20,3}, r[3] = {7,7,2};
    Vector3D v(tab), loc1(l1), loc2(l2), rot(r);
    std::shared_ptr<Drone> DronePtr1 = std::make_shared<Drone>(v,rot, loc1, 0);
    numberOfDrones++;
    listOfDrones.push_back(DronePtr1);
    listOfObjects.push_back(DronePtr1);
    std::shared_ptr<Drone> DronePtr2 = std::make_shared<Drone>(v,rot, loc2, 1);
    listOfDrones.push_back(DronePtr2);
    listOfObjects.push_back(DronePtr2);
    numberOfDrones++;

    numberOfObstacles = 0;

}

Scene::~Scene() {

    for(std::shared_ptr<SceneObject> Obstacle : listOfObstacles) {

        remove(Obstacle->Filename().c_str());

    }

}

std::shared_ptr<Drone> Scene::UseDrone(int droneNumber) {

    auto CheckNumber = [droneNumber](std::shared_ptr<Drone> Ptr) -> bool {

		return (Ptr->GetNumber() == droneNumber); 

    };
    std::list<std::shared_ptr<Drone>>::iterator DroneIterator = std::find_if(listOfDrones.begin(), listOfDrones.end(), CheckNumber);
    if (DroneIterator == listOfDrones.end()) 
      std::cout << "Brak drona o danym numerze" << std::endl;
    return *DroneIterator;

}

void Scene::AddObstacle(int obstacle, Vector3D scale, Vector3D loc, PzG::LaczeDoGNUPlota &Link) {

    loc[2] = scale[2]/2;

    if(obstacle == 1) {

        std::shared_ptr<Plateau> ObstaclePtr = std::make_shared<Plateau>(scale, numberOfObstacles++);
        listOfObstacles.push_back(ObstaclePtr);
        listOfObjects.push_back(ObstaclePtr); 
        ObstaclePtr->SavePlateau(loc);
        Link.DodajNazwePliku((ObstaclePtr->GetFilename()).c_str());
       
    }

}

void Scene::PrintObstacles() const {

    for(std::shared_ptr<SceneObject> Obstacle : listOfObstacles) {

        std::cout << Obstacle->GetNumber() << " - " << Obstacle->GetType() << " (" << Obstacle->Location()[0] << ", " << Obstacle->Location()[1] << ")" << std::endl;

    }

}

void Scene::DeleteObstacle(int number, PzG::LaczeDoGNUPlota &Link) {

    auto CheckNumber = [number](std::shared_ptr<SceneObject> obstaclePtr) -> bool {

		return (obstaclePtr->GetNumber() == number && obstaclePtr->GetType() != "dron"); 

    };

    std::list<std::shared_ptr<SceneObject>>::iterator obstacleIterator = std::find_if(listOfObstacles.begin(),listOfObstacles.end(), CheckNumber);
    if (obstacleIterator == listOfObstacles.end()) {

      std::cout << "Brak przeszkody o zadanym mumerze" << std::endl;
      return;

    }

    std::list<std::shared_ptr<SceneObject>>::iterator objectIterator = std::find(listOfObjects.begin(),listOfObjects.end(), (*obstacleIterator));
    if (objectIterator == listOfObjects.end()) {

      std::cout << "Zly numer przeszkody!!!" << std::endl;
      return;

    }

    Link.UsunNazwePliku((*obstacleIterator)->Filename().c_str());
    remove((*obstacleIterator)->Filename().c_str());
    listOfObstacles.erase(obstacleIterator);
    listOfObjects.erase(objectIterator);

}