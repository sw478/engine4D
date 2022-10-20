namespace engine4D {
    class Vector3{

    private:

    public:
        float x, y, z;

        Vector3();
        Vector3(float uX,float uY,float uZ);

        //Destructors
        ~Vector3();

        //Copy Constructors
        Vector3(const Vector3& v);
        Vector3& operator=(const Vector3& v);     
      };
}