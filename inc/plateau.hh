#include <fstream>
#include "scene_object.hh"
#include "cuboid.hh"

class Plateau : public SceneObject, public Cuboid {

    public:

        Plateau(Vector3D scale, int number);
        
        ~Plateau();

        void SavePlateau(Vector3D loc);

        std::string Filename() override final;

        Vector3D Location() const override final;

};