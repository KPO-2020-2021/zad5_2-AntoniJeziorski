#pragma once

#include <iostream>
#include <string>
#include <memory>
#include <list>
#include <algorithm>
#include <memory>
#include "vector3D.hh"

class SceneObject {

    std::string objectType;

    int objectNumber;

    public:

        SceneObject();

        SceneObject(int number, const std::string type);

        int GetNumber() const;

        std::string GetType() const;

        virtual ~SceneObject();

        virtual std::string Filename() = 0;

        virtual Vector3D Location() const = 0;

};