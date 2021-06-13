#include <fstream>
#include "scene_object.hh"
#include "cuboid.hh"

class Slope : public SceneObject, public Cuboid {

    public:

        Slope(Vector3D scale, int number);
        
        ~Slope();

        void SaveSlope(Vector3D loc);

        std::string Filename() override final;

        Vector3D Location() const override final;

};