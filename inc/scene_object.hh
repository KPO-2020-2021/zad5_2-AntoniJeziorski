#pragma once

#include <iostream>
#include <string>
#include <memory>
#include <list>
#include <algorithm>
#include <memory>

class SceneObject {

    std::string objectType;

    int objectNumber;

    public:

        SceneObject();

        SceneObject(int number, const std::string type);

        int GetNumber() const;

        std::string GetType() const;

        virtual ~SceneObject();

};