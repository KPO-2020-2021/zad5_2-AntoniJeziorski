#include "drone.hh"
#include "plateau.hh"
#include "scene_object.hh"

/*!
 *
 * \file scene.hh
 * 
 * \brief Plik zawierajacy definicje klasy Scene
 */

/*!
 *
 * \brief Definicja klasy Scene reprezentujacej scene z dronami
 */

class Scene {

    std::list<std::shared_ptr<Drone>> listOfDrones;

    std::list<std::shared_ptr<SceneObject>> listOfObjects;

    std::list<std::shared_ptr<SceneObject>> listOfObstacles;

    PzG::LaczeDoGNUPlota Link;

    int numberOfDrones;

    int numberOfObstacles;

    public:

        Scene();

        /*!
         *
         * \brief Metoda zwracajaca referencje do drona ktorego chcemy uzyc
         * 
         * \param droneNumber - numer drona
         * 
         * \return Referencje do drona o zadanym numerze
         */

        std::shared_ptr<Drone> UseDrone(int droneNumber);

        /*!
         *
         * \brief Metoda zwracajaca drona tylko do odczytu
         * 
         * \param droneNumber - numer drona
         * 
         * \return const Drone o zadanym numerze
         */

        void AddObstacle(int obstacle, Vector3D scale, Vector3D loc, PzG::LaczeDoGNUPlota &Link);

        void DeleteObstacle(int number, PzG::LaczeDoGNUPlota &Link);

        void PrintObstacles() const;

};


