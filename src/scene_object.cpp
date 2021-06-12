#include <scene_object.hh>

SceneObject::SceneObject() {
    
}

SceneObject::SceneObject(int number, const std::string type) {

    objectNumber = number;

    objectType = type;

}

int SceneObject::GetNumber() const {

    return objectNumber;

}

std::string SceneObject::GetType() const {

    return objectType;
    
}

SceneObject::~SceneObject() {

}
