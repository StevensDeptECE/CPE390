class Shape {
public:
	// pure virtual function means this class is ABSTRACT
	virtual void draw() const = 0;
};
// Shape is an abstract class. It does not exist.
// Shape is only what all its children have in common

class Circle : public Shape {
public:
	void draw() const override {

	}
};

class Square : public Shape {
public:
	void draw() const override {

	}
};

int main() {
	//	Shape s;
	//s.draw();

	Circle c;
	c.draw();

	Square s;
	s.draw();

	
	vector<Shape*> shapes;
	shapes.push_back(new Circle());
	shapes.push_back(new Square());

  for (int i = 0; i < shapes.size(); i++)
		shapes[i]->draw();

	for(auto s : shapes) {
		s->draw();
	}
	
	
}
