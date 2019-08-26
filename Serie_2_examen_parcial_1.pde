float xpos;
float ypos;
int xdirection = 1; // movimiento de derecha a izquierda
int ydirection = 1; // de arriba a abajo
int diametro = 50; //posicion y dimensiones de la figura
float xspeed = 2;
float yspeed = 1;// velocidad que tendra el objeto en movimiento

void setup(){
size(500,500);//se expandio las dimensionales de la pantalla
ellipseMode(CENTER);
xpos = width/2;
ypos = height/2;//se establece la posicion en que se encontrara la figura
}

int linea=10;

void draw(){
   xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  if (xpos > width-diametro || xpos < diametro) {
    xdirection *= -1;
  }
  if (ypos > height-diametro || ypos < diametro) {
    ydirection *= -1;
  }// para que la figura rebote tanto en el eje x como en el y
  
line(0,0,500,500);
point(0,333);
point(55,33);
fill(204,102,0);
rect(230,ypos,55,33);//movimiento del rectangulo de arriba a abajo
ellipse(xpos,ypos,diametro,diametro);//para que su movimiento sea de modo inclinado
line(0,linea,width,linea);
linea=linea+2;}// se van creando lineas continuas
