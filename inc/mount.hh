#include <fstream>
#include "cuboid.hh"
#include "scene_object.hh"

class Mount : public SceneObject, public Cuboid {

    public:

        Mount(Vector3D scale, int number);
        
        ~Mount();

        void SaveMount(Vector3D loc);

        std::string Filename() override final;

        Vector3D Location() const override final;

};