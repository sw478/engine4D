#include "vector3.hpp"

namespace engine4D {

    Vector3::Vector3():x(0.0),y(0.0),z(0.0){};

    Vector3::Vector3(float uX,float uY,float uZ):x(uX),y(uY),z(uZ){}

    Vector3::~Vector3(){}

    Vector3::Vector3(const Vector3& v):x(v.x),y(v.y),z(v.z){}

    Vector3& Vector3::operator=(const Vector3& v){

        x=v.x;
        y=v.y;
        z=v.z;

        return *this;
    }

}