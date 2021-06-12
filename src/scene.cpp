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
    listOfDrones.push_back(DronePtr1);
    listOfObjects.push_back(DronePtr1);
    std::shared_ptr<Drone> DronePtr2 = std::make_shared<Drone>(v,rot, loc2, 1);
    listOfDrones.push_back(DronePtr2);
    listOfObjects.push_back(DronePtr2);

}

std::shared_ptr<Drone> Scene::UseDrone(int droneNumber) {

    auto CheckNumber = [droneNumber](std::shared_ptr<Drone> Ptr) -> bool
			{ return (Ptr->GetNumber() == droneNumber); };
    std::list<std::shared_ptr<Drone>>::iterator DroneIterator = std::find_if(listOfDrones.begin(), listOfDrones.end(), CheckNumber);
    if (DroneIterator == listOfDrones.end()) 
      std::cout << "Brak drona o danym numerze" << std::endl;
    return *DroneIterator;

}

