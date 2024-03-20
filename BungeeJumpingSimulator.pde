int idioma=0; //<>//
int personaje=1;
int tema=1;
int gameScreen = 0;
boolean exit=false;
int pantallaAnterior=0;

//TEMPORAL
PImage temporal;

//ventana salir
PImage v_salir, v_salir_b1_s, v_salir_b1_p, v_salir_b2_s, v_salir_b2_p;
String m_salir, cancelar, aceptar;

//menu elegir mundo
PImage v_elegirMundo, v_elegirMundo_mundoReal, v_elegirMundo_mundoIdeal;
PImage v_elegirMundo_b1_s, v_elegirMundo_b1_p, v_elegirMundo_b2_s, v_elegirMundo_b2_p, v_elegirMundo_tarjeta_s, v_elegirMundo_tarjeta_p, v_elegirMundo_tarjeta_e, v_elegirMundo_tarjeta_e_p;
PImage chulito, chulito_p, chulito_e, chulito_e_p;
String m_elegirMundo, m_elegirMundo_mundoReal, m_elegirMundo_mundoIdeal, regresar, continuar;
String d_mundoReal, d_mundoIdeal;
int mundo=0;

//INSTRUCCIONES
PImage v_instrucciones, b_amarillo1_s, b_amarillo1_p;
String instrucciones_parrafo, bienvenida;


//AJUSTES
int ajustes_coor_y=-6;
String disponible;
PImage v_ajustes;
PImage v_ajustes_b1_s, v_ajustes_b1_p, v_ajustes_b2_s, v_ajustes_b2_p;
//categorias
String general, personalizacion;
//subcategorias
String accesibilidad, audio, S_personaje, S_fondo, S_idioma_actual;
//opciones
String S_idioma, mensajes, sonido, musica;
boolean B_idiomas_expandido=false;
PImage idiomas_expandido, idiomas_e_E, idiomas_s_E, idiomas_p_E, idiomas_s, idiomas_p;
//animacion barra de idiomas
int a_idiomas_numCuadros = 8;
int a_idiomas_cuadroActual = 0;
PImage[] a_idiomas = new PImage[a_idiomas_numCuadros];
boolean B_a_idiomas=false;
//Personalizacion
//personajes
String basico, rocio, aventurero, soldado, zombie;
PImage a_s, b_s, c_s, d_s, e_s, a_p, b_p, c_p, d_p, e_p;
PImage personaje_e;
int personaje_e_X;
//FONDO
PImage flecha_der_s, flecha_der_p, flecha_izq_s, flecha_izq_p, flecha_der_i, flecha_izq_i;
//fondos ajustes
PImage fondo1, fondo2, fondo3;
//fondos simulador
PImage fondosim1, fondosim2, fondosim3;
//fondos menús
PImage bg, bg1, bg2, bg3;

//ANIMACIONES
String abriendo;
PImage telon1, telon2, telon3;
int telon1_ypos=800, telon2_ypos=800, telon3_ypos=0;
int opacidad;
Boolean B_telon3=false;




//transicion1 (menú principal - elegir mundo)
boolean reversa=false, a_t1=true;
int numCuadros = 18;
int cuadroActual = 0;
PImage[] t1 = new PImage[numCuadros];




//PERSONAJES
PImage quieto, cayendo;
PImage a_quieto, a_paso1, a_paso2, a_cayendo;
PImage b_quieto, b_paso1, b_paso2, b_cayendo;
PImage c_quieto, c_paso1, c_paso2, c_cayendo;
PImage d_quieto, d_paso1, d_paso2, d_cayendo;
PImage e_quieto, e_paso1, e_paso2, e_cayendo;

int xpos=-40, ypos=401;
boolean der=true, izq=true, sub=false, B_salto=false;
int vel1=2, vel2=1;

int numCuadros_p = 16;
int cuadroActual_p = 0;
int salto_numCuadros_p = 22;
int salto_cuadroActual_p = 0;
PImage[] pasos = new PImage[numCuadros_p];
PImage[] escalar = new PImage[numCuadros_p];
PImage[] salto = new PImage[salto_numCuadros_p];
//A
PImage[] a_pasos = new PImage[numCuadros_p];
PImage[] a_escalar = new PImage[numCuadros_p];
PImage[] a_salto = new PImage[salto_numCuadros_p];
//B
PImage[] b_pasos = new PImage[numCuadros_p];
PImage[] b_escalar = new PImage[numCuadros_p];
PImage[] b_salto = new PImage[salto_numCuadros_p];
//C
PImage[] c_pasos = new PImage[numCuadros_p];
PImage[] c_escalar = new PImage[numCuadros_p];
PImage[] c_salto = new PImage[salto_numCuadros_p];
//D
PImage[] d_pasos = new PImage[numCuadros_p];
PImage[] d_escalar = new PImage[numCuadros_p];
PImage[] d_salto = new PImage[salto_numCuadros_p];
//E
PImage[] e_pasos = new PImage[numCuadros_p];
PImage[] e_escalar = new PImage[numCuadros_p];
PImage[] e_salto = new PImage[salto_numCuadros_p];





//MENU PRINCIPAL
PImage fondo, ventana;
PImage boton1_s, boton2_s, boton3_s, boton4_s;
PImage boton1_p, boton2_p, boton3_p, boton4_p;
PFont titulo, cuerpo;
String empezar, ajustes, creditos, instrucciones, salir, version, nombre;
int ancho=945, alto=525;

//SIMULADOR
boolean B_cubrir_personaje=false;
boolean exit_sim=false;
PImage fondosim;
//Variables simulador
int cuerda_default=30, altura_default=100, masa_default=50, elasticidad_default=10, amortiguamiento_default=0;
int cuerda=cuerda_default, altura=altura_default, masa=masa_default, elasticidad=elasticidad_default, amortiguamiento=amortiguamiento_default;
int altura_lim_inf=10, masa_lim_inf=5, cuerda_lim_inf=5, elasticidad_lim_inf=5, amortiguamiento_lim_inf=5;
int altura_lim_sup=500, masa_lim_sup=500, cuerda_lim_sup=100, elasticidad_lim_sup=25, amortiguamiento_lim_sup=30;
String ingreso, S_altura, S_masa, S_cuerda, S_elasticidad, S_amortiguamiento, reproducir;
PImage ventana_fase1, ventana_fase2, suelo, plataforma, contadores, bar_sup, v_simulador_b3_s, v_simulador_b3_p, v_simulador_b3_i, v_simulador_b4_s, v_simulador_b4_p, v_simulador_b4_i;
PImage v_simulador_b1_n, v_simulador_b1_s, v_simulador_b1_p, v_simulador_b2_n, v_simulador_b2_s, v_simulador_b2_p, v_simulador_b5_n, v_simulador_b5_s, v_simulador_b5_p;
//animaciones
int v_simulador_f1_ypos=-400;
boolean a_f1=true, a_f1_bajar=true, a_f1_subir=false;
PImage cubrir_personaje;


//FÍSICAS
boolean B_reproducir=true;
double vi=0, aceleracion=0, y=0, amp, tiempo=0, frang, lnd, yi=0, v=0, phi;
float t2, y2=100, v2, amp2;
float m[][]=new float[3][10000];
int i=0;
boolean fase_2=false;
PImage ventana_sim;

//INSTRUCCIONES
String texto_instrucciones, texto_creditos;



void setup() {
  size(945, 525);
  ventana = loadImage("ventana.png");

  //INSTRUCCIONES
  v_instrucciones = loadImage("UI/v_instrucciones.png");
  b_amarillo1_s = loadImage("UI/b_amarillo1_s.png");
  b_amarillo1_p = loadImage("UI/b_amarillo1_p.png");


  //fuentes
  textAlign(CENTER, CENTER);
  titulo = createFont("kenvector_future.ttf", 32);
  cuerpo = createFont("kenvector_future_thin.ttf", 32);

  //botones seleccionados
  boton1_s = loadImage("boton1_s.png");
  boton2_s = loadImage("boton2_s.png");
  boton3_s = loadImage("boton3_s.png");
  boton4_s = loadImage("boton4_s.png");

  //botones presionados
  boton1_p = loadImage("boton1_p.png");
  boton2_p = loadImage("boton2_p.png");
  boton3_p = loadImage("boton3_p.png");
  boton4_p = loadImage("boton4_p.png");

  //ventana salir
  v_salir = loadImage("v_salir.png");
  v_salir_b1_s = loadImage("v_salir_b1_s.png");
  v_salir_b1_p = loadImage("v_salir_b1_p.png");
  v_salir_b2_s = loadImage("v_salir_b2_s.png");
  v_salir_b2_p = loadImage("v_salir_b2_p.png");

  //elegir mundo
  v_elegirMundo = loadImage("v_elegirMundo.png");
  v_elegirMundo_mundoReal = loadImage("v_elegirMundo_mundoReal.png");
  v_elegirMundo_mundoIdeal = loadImage("v_elegirMundo_mundoIdeal.png");
  //botones
  v_elegirMundo_b1_s        = loadImage("v_elegirMundo_b1_s.png");
  v_elegirMundo_b1_p        = loadImage("v_elegirMundo_b1_p.png");
  v_elegirMundo_b2_s        = loadImage("v_elegirMundo_b2_s.png");
  v_elegirMundo_b2_p        = loadImage("v_elegirMundo_b2_p.png");
  v_elegirMundo_tarjeta_s   = loadImage("v_elegirMundo_tarjeta_s.png");
  v_elegirMundo_tarjeta_p   = loadImage("v_elegirMundo_tarjeta_p.png");
  v_elegirMundo_tarjeta_e   = loadImage("v_elegirMundo_tarjeta_e.png");
  v_elegirMundo_tarjeta_e_p = loadImage("v_elegirMundo_tarjeta_e_p.png");
  chulito     = loadImage("chulito.png");
  chulito_p   = loadImage("chulito_p.png");
  chulito_e   = loadImage("chulito_e.png");
  chulito_e_p = loadImage("chulito_e_p.png");


  //Fondo
  fondosim1=loadImage("fondos/1/fondosim.png");
  fondosim2=loadImage("fondos/2/fondosim.png");
  fondosim3=loadImage("fondos/3/fondosim.png");
  //Menus
  bg1 = loadImage("fondos/1/bg.png");
  bg2 = loadImage("fondos/2/bg.png");
  bg3 = loadImage("fondos/3/bg.png");


  //MENU AJUSTES
  v_ajustes=loadImage("UI/ajustes/v_ajustes.png");
  v_ajustes_b1_s=loadImage("UI/ajustes/v_ajustes_b1_s.png");
  v_ajustes_b1_p=loadImage("UI/ajustes/v_ajustes_b1_p.png");
  v_ajustes_b2_s=loadImage("UI/ajustes/v_ajustes_b2_s.png");
  v_ajustes_b2_p=loadImage("UI/ajustes/v_ajustes_b2_p.png");
  idiomas_expandido=loadImage("UI/ajustes/idiomas_expandido.png");
  idiomas_e_E = loadImage("UI/ajustes/idiomas_e_E.png");
  idiomas_s_E = loadImage("UI/ajustes/idiomas_s_E.png");
  idiomas_p_E = loadImage("UI/ajustes/idiomas_p_E.png");
  idiomas_s   = loadImage("UI/ajustes/idiomas_s.png");
  idiomas_p   = loadImage("UI/ajustes/idiomas_p.png");
  //animacion barra de idiomas
  for (int i=0; i<=7; i++) {
    a_idiomas[i]=loadImage("UI/ajustes/animacion_idiomas/a_idiomas_"+(i+1)+".png");
  }
  //personajes
  a_s = loadImage("UI/ajustes/personajes/a/a_s.png");
  b_s = loadImage("UI/ajustes/personajes/b/b_s.png");
  c_s = loadImage("UI/ajustes/personajes/c/c_s.png");
  d_s = loadImage("UI/ajustes/personajes/d/d_s.png");
  e_s = loadImage("UI/ajustes/personajes/e/e_s.png");
  a_p = loadImage("UI/ajustes/personajes/a/a_p.png");
  b_p = loadImage("UI/ajustes/personajes/b/b_p.png");
  c_p = loadImage("UI/ajustes/personajes/c/c_p.png");
  d_p = loadImage("UI/ajustes/personajes/d/d_p.png");
  e_p = loadImage("UI/ajustes/personajes/e/e_p.png");
  personaje_e =loadImage("UI/ajustes/personajes/personaje_e.png");
  //fondos
  flecha_der_s = loadImage("UI/ajustes/flecha_der_s.png");
  flecha_der_p = loadImage("UI/ajustes/flecha_der_p.png");
  flecha_der_i = loadImage("UI/ajustes/flecha_der_i.png");
  flecha_izq_s = loadImage("UI/ajustes/flecha_izq_s.png");
  flecha_izq_p = loadImage("UI/ajustes/flecha_izq_p.png");
  flecha_izq_i = loadImage("UI/ajustes/flecha_izq_i.png");

  fondo1 = loadImage("UI/ajustes/fondo1.png");
  fondo2 = loadImage("UI/ajustes/fondo2.png");
  fondo3 = loadImage("UI/ajustes/fondo3.png");


  //Personaje
  //caminar
  for (int i = 0; i<=7; i++) {
    a_pasos[i]=loadImage("/animaciones/sprites/a/paso1.png");
    b_pasos[i]=loadImage("/animaciones/sprites/b/paso1.png");
    c_pasos[i]=loadImage("/animaciones/sprites/c/paso1.png");
    d_pasos[i]=loadImage("/animaciones/sprites/d/paso1.png");
    e_pasos[i]=loadImage("/animaciones/sprites/e/paso1.png");
  }
  for (int i = 8; i<=15; i++) {
    a_pasos[i]=loadImage("/animaciones/sprites/a/paso2.png");
    b_pasos[i]=loadImage("/animaciones/sprites/b/paso2.png");
    c_pasos[i]=loadImage("/animaciones/sprites/c/paso2.png");
    d_pasos[i]=loadImage("/animaciones/sprites/d/paso2.png");
    e_pasos[i]=loadImage("/animaciones/sprites/e/paso2.png");
  }
  //escalar
  for (int i = 0; i<=7; i++) {
    a_escalar[i]=loadImage("/animaciones/sprites/a/escalar1.png");
    b_escalar[i]=loadImage("/animaciones/sprites/b/escalar1.png");
    c_escalar[i]=loadImage("/animaciones/sprites/c/escalar1.png");
    d_escalar[i]=loadImage("/animaciones/sprites/d/escalar1.png");
    e_escalar[i]=loadImage("/animaciones/sprites/e/escalar1.png");
  }
  for (int i = 8; i<=15; i++) {
    a_escalar[i]=loadImage("/animaciones/sprites/a/escalar2.png");
    b_escalar[i]=loadImage("/animaciones/sprites/b/escalar2.png");
    c_escalar[i]=loadImage("/animaciones/sprites/c/escalar2.png");
    d_escalar[i]=loadImage("/animaciones/sprites/d/escalar2.png");
    e_escalar[i]=loadImage("/animaciones/sprites/e/escalar2.png");
  }
  //quieto
  a_quieto=loadImage("/animaciones/sprites/a/quieto.png");
  b_quieto=loadImage("/animaciones/sprites/b/quieto.png");
  c_quieto=loadImage("/animaciones/sprites/c/quieto.png");
  d_quieto=loadImage("/animaciones/sprites/d/quieto.png");
  e_quieto=loadImage("/animaciones/sprites/e/quieto.png");

  //salto
  int s=0;
  for (int i=0; i<=21; i=i+2) {
    if (i%2==0) {
      s=s+1;
    }
    a_salto[i]   = loadImage("animaciones/sprites/a/salto/salto"+s+".png");
    a_salto[i+1] = loadImage("animaciones/sprites/a/salto/salto"+s+".png");
    b_salto[i]   = loadImage("animaciones/sprites/b/salto/salto"+s+".png");
    b_salto[i+1] = loadImage("animaciones/sprites/b/salto/salto"+s+".png");
    c_salto[i]   = loadImage("animaciones/sprites/c/salto/salto"+s+".png");
    c_salto[i+1] = loadImage("animaciones/sprites/c/salto/salto"+s+".png");
    d_salto[i]   = loadImage("animaciones/sprites/d/salto/salto"+s+".png");
    d_salto[i+1] = loadImage("animaciones/sprites/d/salto/salto"+s+".png");
    e_salto[i]   = loadImage("animaciones/sprites/e/salto/salto"+s+".png");
    e_salto[i+1] = loadImage("animaciones/sprites/e/salto/salto"+s+".png");
  }


  //cayendo
  a_cayendo = loadImage("animaciones/sprites/a/cayendo.png");
  b_cayendo = loadImage("animaciones/sprites/b/cayendo.png");
  c_cayendo = loadImage("animaciones/sprites/c/cayendo.png");
  d_cayendo = loadImage("animaciones/sprites/d/cayendo.png");
  e_cayendo = loadImage("animaciones/sprites/e/cayendo.png");

  //SIMULADOR
  ventana_fase1 = loadImage("UI/ventana_fase1.png");
  ventana_fase2 = loadImage("UI/ventana_fase2.png");
  contadores = loadImage("UI/contadores.png");
  bar_sup = loadImage("UI/barra_superior.png");
  v_simulador_b1_n = loadImage("UI/v_simulador_b1_n.png");
  v_simulador_b1_s = loadImage("UI/v_simulador_b1_s.png");
  v_simulador_b1_p = loadImage("UI/v_simulador_b1_p.png");
  v_simulador_b2_n = loadImage("UI/v_simulador_b2_n.png");
  v_simulador_b2_s = loadImage("UI/v_simulador_b2_s.png");
  v_simulador_b2_p = loadImage("UI/v_simulador_b2_p.png");
  v_simulador_b3_s = loadImage("UI/v_simulador_b3_s.png");
  v_simulador_b3_p = loadImage("UI/v_simulador_b3_p.png");
  v_simulador_b3_i = loadImage("UI/v_simulador_b3_i.png");
  v_simulador_b4_s = loadImage("UI/v_simulador_b4_s.png");
  v_simulador_b4_p = loadImage("UI/v_simulador_b4_p.png");
  v_simulador_b4_i = loadImage("UI/v_simulador_b4_i.png");
  //botón salir
  v_simulador_b5_n = loadImage("UI/v_simulador_b5_n.png");
  v_simulador_b5_s = loadImage("UI/v_simulador_b5_s.png");
  v_simulador_b5_p = loadImage("UI/v_simulador_b5_p.png");
  //
  cubrir_personaje = loadImage("fondos/cubrir_personaje.png");


  //ANIMACIONES

  telon1 = loadImage("animaciones/telon1.png"); 
  telon2 = loadImage("animaciones/telon2.png"); 
  telon3 = loadImage("animaciones/telon3.png"); 




  //transicion1    
  for (int i = 0; i<= 17; i++) {
    t1[i]  = loadImage("animaciones/transicion1/"+(i+1)+".png");
  }


  temporal=loadImage("temporal.png");

  //FISICAS
  ventana_sim = loadImage("UI/ventana_sim.png");
}













void draw() {
  
  cuerda_lim_sup=altura;
  altura_lim_inf=cuerda;

  switch(personaje) {
  default: 
    pasos=a_pasos;
    escalar=a_escalar;
    quieto=a_quieto;
    salto=a_salto;
    cayendo=a_cayendo;
    break;
  case 2: 
    pasos=b_pasos;
    escalar=b_escalar;
    quieto=b_quieto;
    salto=b_salto;
    cayendo=b_cayendo;
    break;
  case 3: 
    pasos=c_pasos;
    escalar=c_escalar;
    quieto=c_quieto;
    salto=c_salto;
    cayendo=c_cayendo;
    break;
  case 4: 
    pasos=d_pasos;
    escalar=d_escalar;
    quieto=d_quieto;
    salto=d_salto;
    cayendo=d_cayendo;
    break;
  case 5: 
    pasos=e_pasos;
    escalar=e_escalar;
    quieto=e_quieto;
    salto=e_salto;
    cayendo=e_cayendo;
    break;
  }

  switch(tema) {
  default: 
    fondosim=fondosim1;
    bg=bg1;
    break;
  case 2: 
    fondosim=fondosim2;
    bg=bg2;
    break;
  case 3: 
    fondosim=fondosim3;
    bg=bg3;
    break;
  }





  //multilenguaje
  switch(idioma) {

    //español     
  default: 
    nombre = "Bungee Jumping Simulator";
    empezar= "Empezar";       
    ajustes = "Ajustes";
    creditos = "Créditos";
    instrucciones = "Instrucciones";
    salir = "Salir";
    m_salir = "¿Quieres salir del simulador?";
    cancelar = "Cancelar";
    aceptar = "Aceptar";
    m_elegirMundo = "•Elige un mundo•";
    m_elegirMundo_mundoReal = "Mundo Real";
    m_elegirMundo_mundoIdeal = "Mundo Ideal";
    regresar = "Regresar";
    continuar = "Continuar";
    d_mundoReal = "Físicas más realistas y mayor número de variables.";
    d_mundoIdeal = "Físicas simples y poco realistas. Menos variables.";
    version = "Versión Beta";

    S_elasticidad= "Elasticidad de la cuerda";
    S_amortiguamiento = "Resistencia del aire";
    ingreso="Ingreso de datos";
    S_altura="Altura";
    S_masa="Masa";
    S_cuerda="Longitud de la cuerda";
    reproducir="Reproducir";
    ;
    //Ajustes
    general = "•General•";
    personalizacion = "•Personalización•";
    accesibilidad = "Accesibilidad";
    audio = "Audio";
    S_personaje = "Personaje";
    S_fondo = "Fondo";
    S_idioma = "Idioma";
    S_idioma_actual = "Español";
    mensajes = "Disminuir ventanas emergentes";
    sonido = "Efectos de sonido";
    musica = "Música";
    //Personalizacion
    basico = "Jack";
    rocio = "Rocío";
    aventurero = "Aventurero";
    soldado = "Soldado";
    zombie = "Zombi";
    abriendo = "Abriendo...";
    //instrucciones
    bienvenida = "¡Bienvenido a Bungee Jumping Simulator!";
    texto_instrucciones = "El Bungee Jumping es un deporte extremo que consiste en hacer un salto desde una altura considerable con una cuerda atada a los tobillos. A través de este simulador, podrás recrear las físicas del movimiento del cuerpo posteriores al salto; contando con la posibilidad de modificar variables como la altura del salto, la longitud de la cuerda o la resistencia del aire.";
    disponible = "Disponible próximamente";
    break;

    //ingles
  case 1:  
    nombre = "Bungee Jumping Simulator";
    empezar= "Start";       
    ajustes = "Settings";
    creditos = "Credits";
    instrucciones = "Instructions";
    salir = "Quit";
    m_salir = "Do you want to leave the simulator?";
    cancelar = "Cancel";
    aceptar = "Yes";
    m_elegirMundo = "•Choose a world•";
    m_elegirMundo_mundoReal = "Real World";
    m_elegirMundo_mundoIdeal = "Ideal World";
    regresar = "Go back";
    continuar = "Continue";
    d_mundoReal = "Physics more attached to reality and additional variables.";
    d_mundoIdeal = "Simple and unrealistic physics. Less variables.";
    version = "Beta version";

    S_elasticidad= "Rope elasticity";
    S_amortiguamiento = "Air resistance";
    ingreso="Data entry";
    S_altura="Height";
    S_masa="Mass";
    S_cuerda="Rope length";
    reproducir="Play";
    salir="Quit";
    //Ajustes
    general = "•General•";
    personalizacion = "•Personalization•";
    accesibilidad = "Accessibility";
    audio = "Audio";
    S_personaje = "Character";
    S_fondo = "Background";
    S_idioma = "Language";
    S_idioma_actual = "English";
    mensajes = "Decrease pop-up windows";
    sonido = "Sound effects";
    musica = "Music";
    //Personalizacion
    basico = "Jack";
    rocio = "Rocío";
    aventurero = "Adventurous";
    soldado = "Soldier";
    zombie = "Zombie";
    abriendo = "Opening...";
    
    break;
    //frances  
  case 2:  
    nombre = "Bungee Jumping Simulator";
    empezar= "Début";       
    ajustes = "Paramètres";
    creditos = "Crédits";
    instrucciones = "Instructions";
    salir = "Quitter";
    m_salir = "Voulez-vous quitter le simulateur?";
    cancelar = "Annuler";
    aceptar = "Oui";
    m_elegirMundo = "•Choisir un monde•";
    m_elegirMundo_mundoReal = "Monde Réel";
    m_elegirMundo_mundoIdeal = "Monde Idéal";
    regresar = "Retourner";
    continuar = "Continuer";
    d_mundoReal = "Physique plus attaché à la réalité et plus grand nombre de variables.";
    d_mundoIdeal = "Physique simple et irréaliste. Moins de variables.";
    version = "Version bêta";

    S_elasticidad= "Élasticité de la corde";
    S_amortiguamiento = "Résistance à l'air";
    ingreso="La saisie des données";
    S_altura="Hauteur";
    S_masa="Masse";
    S_cuerda="Longueur de corde";
    reproducir="Reproduire";
    //Ajustes
    general = "•General•";
    personalizacion = "•Personnalisation•";
    accesibilidad = "Accessibilité";
    audio = "Audio";
    S_personaje = "Personnage";
    S_fondo = "Fond";
    S_idioma = "Langage";
    S_idioma_actual = "Français";
    mensajes = "Diminuer les fenêtres pop-up";
    sonido = "Effets sonores";
    musica = "Musique";
    //Personalizacion
    basico = "Jack";
    rocio = "Rocío";
    aventurero = "Aventureux";
    soldado = "Soldat";
    zombie = "Zombi";
    abriendo = "Ouverture...";
    break;

    //aleman         
  case 3:  
    nombre = "Bungee Jumping Simulator";
    empezar= "Starten";       
    ajustes = "Einstellungen";
    creditos = "Credits";
    instrucciones = "Anleitung";
    salir = "Verlassen";
    m_salir = "Möchten Sie den Simulator verlassen?";
    cancelar = "Abbrechen";
    aceptar = "Ja";
    m_elegirMundo = "•Wähle eine Welt•";
    m_elegirMundo_mundoReal = "Reale Welt";
    m_elegirMundo_mundoIdeal = "Ideale Welt";
    regresar = "Rückkehr";
    continuar = "Fortsetzen";
    d_mundoReal = "Physik mehr an die Realität gebunden und zusätzliche Variablen.";
    d_mundoIdeal = "Einfache und unrealistische Physik. Weniger Variablen.";
    version = "Beta-Version";

    S_elasticidad= "Seilelastizität";
    S_amortiguamiento = "Luftwiderstand";
    ingreso="Dateneingabe";
    S_altura="Höhe";
    S_masa="Masse";
    S_cuerda="Seillänge";
    reproducir="Spielen";
    //Ajustes
    general = "•Allgemein•";
    personalizacion = "•Personalisierung•";
    accesibilidad = "Barrierefreiheit";
    audio = "Audio";
    S_personaje = "Charakter";
    S_fondo = "Hintergrund";
    S_idioma = "Sprache";
    S_idioma_actual = "Deutsche";
    mensajes = "Popup-Fenster verkleinern";
    sonido = "Soundeffekte";
    musica = "Musik";
    //Personalizacion
    basico = "Jack";
    rocio = "Rocío";
    aventurero = "Abenteuerlich";
    soldado = "Soldat";
    zombie = "Zombie";
    abriendo = "öffnen...";

    break;           
    //portugues        
  case 4:  
    nombre = "Bungee Jumping Simulator";
    empezar= "Iniciar";       
    ajustes = "Configurações";
    creditos = "Créditos";
    instrucciones = "Instruções";
    salir = "Sair";
    m_salir = "Deseja sair do simulador?";
    cancelar = "Cancelar";
    aceptar = "Sim";
    m_elegirMundo = "•Escolha um mundo•";
    m_elegirMundo_mundoReal = "Mundo Real";
    m_elegirMundo_mundoIdeal = "Mundo Ideal";
    regresar = "Volte";
    continuar = "Continuar";
    d_mundoReal = "Física mais realista e maior número de variáveis.";
    d_mundoIdeal = "Física simples e irrealista. Menos variáveis";
    version = "Versão Beta";

    S_elasticidad= "Elasticidade da corda";
    S_amortiguamiento = "A resistência do ar";
    ingreso="Entrada de dados";
    S_altura="Altura";
    S_masa="Massa";
    S_cuerda="Comprimento da corda";
    reproducir="Reproduzir";
    //Ajustes
    general = "•Geral•";
    personalizacion = "•Personalização•";
    accesibilidad = "Acessibilidade";
    audio = "Áudio";
    S_personaje = "Personagem";
    S_fondo = "Fundo";
    S_idioma = "Idioma";
    S_idioma_actual = "Português";
    mensajes = "Diminuir janelas pop-up";
    sonido = "Efeitos sonoros";
    musica = "Música";
    //Personalizacion
    basico = "Jack";
    rocio = "Rocío";
    aventurero = "Aventureiro";
    soldado = "Soldado";
    zombie = "Zumbi";
    abriendo = "Abertura...";
    break;

    //Italiano
  case 5:
    nombre = "Bungee Jumping Simulator";
    empezar= "Inizio";       
    ajustes = "Impostazioni";
    creditos = "Crediti";
    instrucciones = "Istruzioni";
    salir = "Abbandonare";
    m_salir = "Vuoi lasciare il simulatore?";
    cancelar = "Annulla";
    aceptar = "Sì";
    m_elegirMundo = "•Scegli un mondo•";
    m_elegirMundo_mundoReal = "Mondo Reale";
    m_elegirMundo_mundoIdeal = "Mondo Ideale";
    regresar = "Ritorna";
    continuar = "Continuare";
    d_mundoReal = "Fisica più legata alla realtà e variabili aggiuntive.";
    d_mundoIdeal = "Fisica semplice e non realistica. Meno variabili.";
    version = "Versione beta";

    S_elasticidad= "Elasticità della corda";
    S_amortiguamiento = "Resistenza all'aria";
    ingreso="Inserimento dati";
    S_altura="Altezza";
    S_masa="Massa";
    S_cuerda="Lunghezza della corda";
    reproducir="Riprodurre";
    //Ajustes
    general = "•Generale•";
    personalizacion = "•personalizzazione•";
    accesibilidad = "Accessibilità";
    audio = "Audio";
    S_personaje = "Carattere";
    S_fondo = "Sfondo";
    S_idioma = "Linguaggio";
    S_idioma_actual = "Italiano";
    mensajes = "Riduci le finestre popup";
    sonido = "Effetti sonori";
    musica = "Musica";
    //Personalizacion
    basico = "Jack";
    rocio = "Rocío";
    aventurero = "Avventuroso";
    soldado = "Soldato";
    zombie = "Zombie";
    abriendo = "Apertura...";
    break;
  }
  switch(gameScreen) {
  default: 
    inicio();
    break;
    //transicion menu principal-elegir mundo
  case 1: 
    transicion1();
    break;
    //menu elegir mundo
  case 2: 
    elegirMundo();
    break;
    //transicion elegir mundo-simulador
  case 3: 
    transicion2();
    break;
    //mundo real
  case 4: 
    mundoReal();
    amortiguamiento_default=10;

    break;
    //mundo ideal
  case 5: 
    mundoIdeal();
    amortiguamiento_default=0;
    break;
    //menu ajustes
  case 6: 
    ajustes();
    break;
    //creditos
  case 7: 
    creditos();
    break;
    //instrucciones
  case 8: 
    instrucciones();
    break;
    //transicion menu principal-ajustes
  case 9: 
    transicion3();
    break;
    //transicion menu principal-creditos
  case 10: 
    transicion12();
    break;
    //transicion menu principal-instrucciones
  case 11: 
    transicion11();
    break;
  case 12:
    simulador();
    break;
  }
}









//ACCIONES DE LOS BOTONES
void mouseClicked() {

  //TRANSICION2
  //TEMPORAL
  if (gameScreen==3) {
    //personaje
    if (mouseX > 864 && mouseX < 895 && mouseY > 0 && mouseY < 40) {
      if (personaje<5) {
        personaje=personaje+1;
      } else {
        personaje=1;
      }
    }
    //tema
    if (mouseX > 895 && mouseX < 945 && mouseY > 0 && mouseY < 40) {
      if (tema<3) {
        tema=tema+1;
      } else {
        tema=1;
      }
    }
  }
  //MENU PRINCIPAL
  if (gameScreen==0 && exit==false && telon2_ypos<-400) {
    if (mouseX > 409 && mouseX < 591 && mouseY > 360 && mouseY < 409) {
      exit=true;
    }
    //empezar
    if (mouseX > 353 && mouseX < 591 && mouseY > 179 && mouseY < 242) {
      reversa=true;
      gameScreen=1;
    }
    
    //ajustes
    if (mouseX > 353 && mouseX < 591 && mouseY > 248 && mouseY < 297) {
      gameScreen=9;
    }
    //creditos
    if (mouseX > 353 && mouseX < 591 && mouseY > 304 && mouseY < 353) {
      gameScreen=7;
    }
    //instrucciones
    if (mouseX > 353 && mouseX < 402 && mouseY > 360 && mouseY < 409) {
      gameScreen=11;
    }
  }
  //Menú De Salida
  //botón aceptar
  if (exit==true) {
    if (mouseX > 479 && mouseX < 619 && mouseY > 265 && mouseY < 314) {
      exit();
    }
  }
  //botón cancelar     
  if (exit==true) {
    if (mouseX > 325 && mouseX < 465 &&  mouseY > 265 && mouseY < 314) {
      exit=false;
    }
  }

  //MENU INSTRUCCIONES
  //Atrás
  if (mouseX > 110 && mouseX < 154 && mouseY > 68+ajustes_coor_y && mouseY < 104+ajustes_coor_y && gameScreen==8) {
    gameScreen=11;
  }
  //MENU CREDITOS
  //Atrás
  if (mouseX > 110 && mouseX < 154 && mouseY > 68+ajustes_coor_y && mouseY < 104+ajustes_coor_y && gameScreen==7) {
    gameScreen=0;
  }








  //MENU ESCOGER MUNDO

  //boton regresar
  if (gameScreen==2) {
    if (mouseX > 449 && mouseX < 589 && mouseY > 369 && mouseY < 418) {
      reversa=false;
      gameScreen=1;
      mundo=0;
    }
    //elegir mundo real
    if (mouseX > 219 && mouseX < 464 && mouseY > 146 && mouseY < 339) {
      if (mundo==1) {
        mundo=0;
      } else {
        mundo=1;
      }
    }

    //elegir mundo ideal  
    if (mouseX > 481 && mouseX < 726 && mouseY > 146 && mouseY < 339) {
      if (mundo==2) {
        mundo=0;
      } else {
        mundo=2;
      }
    }

    if (mundo!=0 && mouseX > 603 && mouseX < 743 && mouseY > 369 && mouseY < 418) {
      gameScreen=3;
    }
  }
  
  
    //SALIR MUNDO IDEAL
  if (mouseX > 426 && mouseX < 476 && mouseY > 341 && mouseY < 383 && a_f1==false && gameScreen==5) {
    B_telon3=true;
    exit_sim=true;
  }
  //SALIR MUNDO REAL
  if (mouseX > 426 && mouseX < 476 && mouseY > 406 && mouseY < 448 && a_f1==false && gameScreen==4) {
    B_telon3=true;
    exit_sim=true;
  }




  //SIMULADOR
  //Ventana de salir
  if ((gameScreen==4 || gameScreen==5 || gameScreen==12)&&exit_sim==true) {
    //cancelar
    if (mouseX > 325 && mouseX < 465 &&  mouseY > 265 && mouseY < 314) {
      exit_sim=false;
    }

    //aceptar
    if (mouseX > 479 && mouseX < 619 && mouseY > 265 && mouseY < 314) {
      gameScreen=0;
    }
  }

  //ATRAS SIMULADOR
  if (mouseX > 728 && mouseX < 778 && mouseY > 406 && mouseY < 447 && a_f1==false && gameScreen==12) {

    B_salto=false;
    salto_cuadroActual_p=0;
if(pantallaAnterior==5){
     gameScreen=5; 
}else{
 gameScreen=4; 
}

    
    vi=0;aceleracion=0;y=0; tiempo=0; yi=0; v=0;
    t2=0; y2=138; v2=0; amp2=0;
    i=0;
    fase_2=false;
   
  }

  if (a_f1==false && (gameScreen==4 || gameScreen==5) && exit_sim==false) {
    if (gameScreen==5) {
      //RESTABLECER
      if (mouseX > 728 && mouseX < 778 && mouseY > 341 && mouseY < 382 && a_f1==false) {

        altura=altura_default;
        masa=masa_default;
        cuerda=cuerda_default;
        elasticidad=elasticidad_default;
        amortiguamiento=amortiguamiento_default;
        B_salto=false;
        salto_cuadroActual_p=0;
        B_cubrir_personaje=false;
      }

      //REPRODUCIR
      //MOSTRAR ANIMACION/GRAFICAS EN EL MUNDO IDEAL
      if (mouseX > 778 && mouseX < 828 && mouseY > 341 && mouseY < 382 && a_f1==false) {
        //gameScreen=12;
        B_cubrir_personaje=true;
        B_salto=true;
      }
    }


    //Altura
    //+10
    if (mouseX > 753 && mouseX < 791 && mouseY > 125 && mouseY < 150) {
      if (altura<altura_lim_sup-10) {
        altura=altura+10;
      } else {
        altura=altura_lim_sup;
      }
    }
    //+1
    if (mouseX > 797 && mouseX < 827 && mouseY > 125 && mouseY < 150) {
      if (altura<altura_lim_sup) {
        altura=altura+1;
      }
    }

    //-10
    if (mouseX > 605 && mouseX < 643 && mouseY > 125 && mouseY < 150) {
      if (altura>altura_lim_inf+10) {
        altura=altura-10;
      } else {
        altura=altura_lim_inf;
      }
    }
    //-1
    if (mouseX > 569 && mouseX < 599 && mouseY > 125 && mouseY < 150) {
      if (altura>altura_lim_inf) {
        altura=altura-1;
      }
    }



    //Masa
    //+10
    if (mouseX > 753 && mouseX < 791 && mouseY > 169 && mouseY < 194) {
      if (masa<masa_lim_sup-10) {
        masa=masa+10;
      } else {
        masa=masa_lim_sup;
      }
    }
    //+1
    if (mouseX > 797 && mouseX < 827 && mouseY > 169 && mouseY < 194) {
      if (masa<masa_lim_sup) {
        masa=masa+1;
      }
    }
    //-10
    if (mouseX > 605 && mouseX < 643 && mouseY > 169 && mouseY < 194) {
      if (masa>masa_lim_inf+10) {
        masa=masa-10;
      } else {
        masa=masa_lim_inf;
      }
    }
    //-1
    if (mouseX > 569 && mouseX < 599 && mouseY > 169 && mouseY < 194) {
      if (masa>altura_lim_inf) {
        masa=masa-1;
      }
    }


    //Cuerda
    //+10
    if (mouseX > 753 && mouseX < 791 && mouseY > 223 && mouseY < 248) {
      if (cuerda<cuerda_lim_sup-10) {
        cuerda=cuerda+10;
      } else {
        cuerda=cuerda_lim_sup;
      }
    }
    //+1
    if (mouseX > 797 && mouseX < 827 && mouseY > 223 && mouseY < 248) {
      if (cuerda<cuerda_lim_sup) {
        cuerda=cuerda+1;
      } else {
        cuerda=cuerda_lim_sup;
      }
    }
    //-10
    if (mouseX > 605 && mouseX < 643 && mouseY > 223 && mouseY < 248) {
      if (cuerda>cuerda_lim_inf+10) {
        cuerda=cuerda-10;
      } else {
        cuerda=cuerda_lim_inf;
      }
    }
    //-1
    if (mouseX > 569 && mouseX < 599 && mouseY > 223 && mouseY < 248) {
      if (cuerda>cuerda_lim_inf) {
        cuerda=cuerda-1;
      }
    }

    //Elasticidad
    //+10
    if (mouseX > 753 && mouseX < 791 && mouseY > 288 && mouseY < 313) {
      if (elasticidad<elasticidad_lim_sup-10) {
        elasticidad=elasticidad+10;
      } else {
        elasticidad=elasticidad_lim_sup;
      }
    }
    //+1
    if (mouseX > 797 && mouseX < 827 && mouseY > 288 && mouseY < 313) {
      if (elasticidad<elasticidad_lim_sup) {
        elasticidad=elasticidad+1;
      } else {
        elasticidad=elasticidad_lim_sup;
      }
    }
    //-10
    if (mouseX > 605 && mouseX < 643 && mouseY > 288 && mouseY < 313) {
      if (elasticidad>elasticidad_lim_inf+10) {
        elasticidad=elasticidad-10;
      } else {
        elasticidad=elasticidad_lim_inf;
      }
    }
    //-1
    if (mouseX > 569 && mouseX < 599 && mouseY > 288 && mouseY < 313) {
      if (elasticidad>elasticidad_lim_inf) {
        elasticidad=elasticidad-1;
      }
    }

    if (gameScreen==4 && exit_sim==false) {

      //RESTABLECER
      if (mouseX > 728 && mouseX < 778 && mouseY > 406 && mouseY < 447 && a_f1==false) {

        altura=altura_default;
        masa=masa_default;
        cuerda=cuerda_default;
        elasticidad=elasticidad_default;
        amortiguamiento=amortiguamiento_default;
        B_salto=false;
        salto_cuadroActual_p=0;
      }

      //REPRODUCIR
      //MOSTRAR ANIMACION/GRAFICAS EN EL MUNDO REAL
      if (mouseX > 778 && mouseX < 828 && mouseY > 406 && mouseY < 447 && a_f1==false) {

        B_salto=true;
      }


      //Amortiguamiento
      //+10
      if (mouseX > 753 && mouseX < 791 && mouseY > 353 && mouseY < 378) {
        if (amortiguamiento<amortiguamiento_lim_sup-10) {
          amortiguamiento=amortiguamiento+10;
        } else {
          amortiguamiento=amortiguamiento_lim_sup;
        }
      }
      //+1
      if (mouseX > 797 && mouseX < 827 && mouseY > 353 && mouseY < 378) {
        if (amortiguamiento<amortiguamiento_lim_sup) {
          amortiguamiento=amortiguamiento+1;
        } else {
          amortiguamiento=amortiguamiento_lim_sup;
        }
      }
      //-10
      if (mouseX > 605 && mouseX < 643 && mouseY > 353 && mouseY < 378) {
        if (amortiguamiento>amortiguamiento_lim_inf+10) {
          amortiguamiento=amortiguamiento-10;
        } else {
          amortiguamiento=amortiguamiento_lim_inf;
        }
      }
      //-1
      if (mouseX > 569 && mouseX < 599 && mouseY > 353 && mouseY < 378) {
        if (amortiguamiento>amortiguamiento_lim_inf) {
          amortiguamiento=amortiguamiento-1;
        }
      }
    }
  }

  //MENU AJUSTES
  //BOTONES
  //Atrás
  if (mouseX > 110 && mouseX < 154 && mouseY > 68+ajustes_coor_y && mouseY < 104+ajustes_coor_y && gameScreen==6) {
    gameScreen=9;
  }
  //Restablecer
  if (mouseX > 791 && mouseX < 835 && mouseY > 68+ajustes_coor_y && mouseY < 104+ajustes_coor_y && gameScreen==6) {
    personaje=1;
    tema=1;
  }




  //expandir idiomas
  if (gameScreen==6 && mouseX > 260 && mouseX < 421 && mouseY >= 201+ajustes_coor_y && mouseY < 224+ajustes_coor_y && B_idiomas_expandido==false) {
    B_a_idiomas=true;
  }
  if (gameScreen==6 && (mouseX < 256 || mouseX > 425 || mouseY < 195+ajustes_coor_y || mouseY > 309+ajustes_coor_y) && B_idiomas_expandido==true) {
    B_idiomas_expandido=false;
    B_a_idiomas=false;
    a_idiomas_cuadroActual=0;
  }

  //Elegir idioma
  //Español
  if (mouseX > 260 && mouseX < 421 && mouseY >= 236+ajustes_coor_y && mouseY < 252+ajustes_coor_y && B_idiomas_expandido==true) {
    idioma=0;
    B_idiomas_expandido=false;
    B_a_idiomas=false;
    a_idiomas_cuadroActual=0;
  }
  //Ingles
  if (mouseX > 260 && mouseX < 421 && mouseY >= 220+ajustes_coor_y && mouseY < 236+ajustes_coor_y && B_idiomas_expandido==true) {
    idioma=1;
    B_idiomas_expandido=false;
    B_a_idiomas=false;
    a_idiomas_cuadroActual=0;
  }
  //Frances
  if (mouseX > 260 && mouseX < 421 && mouseY >= 252+ajustes_coor_y && mouseY < 268+ajustes_coor_y && B_idiomas_expandido==true) {
    image(idiomas_s_E, 260, 252);    
    idioma=2;
    B_idiomas_expandido=false;
    B_a_idiomas=false;
    a_idiomas_cuadroActual=0;
  }
  //Aleman
  if (mouseX > 260 && mouseX < 421 && mouseY >= 204+ajustes_coor_y && mouseY < 220+ajustes_coor_y && B_idiomas_expandido==true) {
    image(idiomas_s_E, 260, 204);    
    idioma=3;
    B_idiomas_expandido=false;
    B_a_idiomas=false;
    a_idiomas_cuadroActual=0;
  }
  //Portugues
  if (mouseX > 260 && mouseX < 421 && mouseY >= 284+ajustes_coor_y && mouseY < 300+ajustes_coor_y && B_idiomas_expandido==true) {
    idioma=4;
    B_idiomas_expandido=false;
    B_a_idiomas=false;
    a_idiomas_cuadroActual=0;
  }
  //Italiano
  if (mouseX > 260 && mouseX < 421 && mouseY >= 268+ajustes_coor_y && mouseY < 284+ajustes_coor_y && B_idiomas_expandido==true) {
    idioma=5;
    B_idiomas_expandido=false;
    B_a_idiomas=false;
    a_idiomas_cuadroActual=0;
  }



  if (B_idiomas_expandido==false && gameScreen==6) {
    //PERSONALIZACION
    //Personajes
    if (B_idiomas_expandido==false) {
      //A
      if (mouseX > 534 && mouseX < 572 && mouseY >= 184+ajustes_coor_y && mouseY < 254+ajustes_coor_y) {
        personaje=1;
      }
      //B
      if (mouseX > 593 && mouseX < 631 && mouseY >= 184+ajustes_coor_y && mouseY < 254+ajustes_coor_y) {
        personaje=2;
      }
      //C
      if (mouseX > 652 && mouseX < 690 && mouseY >= 184+ajustes_coor_y && mouseY < 254+ajustes_coor_y) {
        personaje=3;
      }
      //D
      if (mouseX > 711 && mouseX < 749 && mouseY >= 184+ajustes_coor_y && mouseY < 254+ajustes_coor_y) {
        personaje=4;
      }
      //E
      if (mouseX > 770 && mouseX < 808 && mouseY >= 184+ajustes_coor_y && mouseY < 254+ajustes_coor_y) {
        personaje=5;
      }
      //FONDOS
      //flecha izquierda
      if (mouseX > 501 && mouseX < 523 && mouseY > 306+ajustes_coor_y && mouseY < 422+ajustes_coor_y && tema >1) {
        tema=tema-1;
      }
      //flecha derecha
      if (mouseX > 819 && mouseX < 841 && mouseY > 306+ajustes_coor_y && mouseY < 422+ajustes_coor_y && tema < 3) {
        tema=tema+1;
      }
    }
  }
}






//menú principal

void inicio() {
  image(bg, 0, 0);
  image(ventana, 332, 95);

  //restablecer animaciones y submenús
  exit_sim=false;
  xpos=-40;
  ypos=401;
  der=true;
  izq=true;
  sub=false;
  B_salto=false;
  //; telon2_ypos=800; telon3_ypos=0;
  telon1_ypos=800;
  altura=altura_default;
  masa=masa_default;
  cuerda=cuerda_default;
  elasticidad=elasticidad_default;
  amortiguamiento=amortiguamiento_default;
  B_salto=false;
  salto_cuadroActual_p=0;

  pantallaAnterior=0;


  if (gameScreen==0) {
    textFont(cuerpo);
    textSize(13);
    textAlign(CENTER, BOTTOM);
    fill(0, 60);
    text("© 2019 Universidad del Norte", 472, 521);
    textAlign(RIGHT, BOTTOM);
    text(version, 937, 521);
  }





  textAlign(CENTER, CENTER);
  fill(255);
  textFont(titulo);
  textSize(18); 
  text(empezar, 473, 206); 
  textFont(cuerpo);
  textSize(15); 
  text(ajustes, 473, 269);
  text(creditos, 473, 324);
  text(salir, 501, 380);


  if (exit==false) {
    //empezar
    if (mouseX > 353 && mouseX < 591 && mouseY > 179 && mouseY < 242) {
      image(boton1_s, 353, 179);
      textFont(titulo);
      textSize(18); 
      fill(#a88600);
      text(empezar, 473, 206);
      fill(255);
      if (mousePressed == true) {
        image(boton1_p, 353, 179);
        fill(#a88600);
        text(empezar, 473, 210);
        fill(255);
      }
    }

    //ajustes
    if (mouseX > 353 && mouseX < 591 && mouseY > 248 && mouseY < 297) {
      image(boton2_s, 353, 248);
      fill(#a88600);
      text(ajustes, 473, 269);
      fill(255);
      if (mousePressed == true) {
        image(boton2_p, 353, 248);
        fill(#a88600);
        text(ajustes, 473, 273);
        fill(255);
      }
    }

    //creditos
    if (mouseX > 353 && mouseX < 591 && mouseY > 304 && mouseY < 353) {
      image(boton2_s, 353, 304);
      fill(#a88600);
      text(creditos, 473, 324);
      fill(255);
      if (mousePressed == true) {
        image(boton2_p, 353, 304);
        fill(#a88600);
        text(creditos, 473, 328);
        fill(255);
      }
    }

    //instrucciones
    if (mouseX > 353 && mouseX < 402 && mouseY > 360 && mouseY < 409) {
      image(boton3_s, 353, 360);
      if (mousePressed == true) {
        image(boton3_p, 353, 360);
      }
    }

    //salir
    if (mouseX > 409 && mouseX < 591 && mouseY > 360 && mouseY < 409) {
      image(boton4_s, 409, 360);
      fill(#a88600);
      text(salir, 501, 380);
      fill(255);
      if (mousePressed == true) {
        image(boton4_p, 409, 360);
        fill(#a88600);
        text(salir, 501, 384);
        fill(255);
      }
    }
  }

  if (exit==true) {
    fill(0, 170);
    rect(0, 0, 945, 525);
    image(v_salir, 297, 194);
    textFont(titulo);
    textSize(18); 
    fill(255);    
    text(m_salir, 325, 204, 294, 54);
    textFont(cuerpo);
    fill(0);
    textSize(18);
    text(cancelar, 396, 286);
    text(aceptar, 550, 286);


    //cancelar
    if (mouseX > 325 && mouseX < 465 &&  mouseY > 265 && mouseY < 314) {
      image(v_salir_b1_s, 325, 265);
      text(cancelar, 396, 286);
      if (mousePressed==true) {
        image(v_salir_b1_p, 325, 265);  
        text(cancelar, 396, 290);
      }
    }
    //fin cancelar

    //aceptar
    if (mouseX > 479 && mouseX < 619 && mouseY > 265 && mouseY < 314) {
      image(v_salir_b2_s, 479, 265);
      text(aceptar, 550, 286);
      if (mousePressed==true) {
        image(v_salir_b2_p, 479, 265);
        text(aceptar, 550, 290);
      }
    }
    //fin
  }





  image(telon2, 0, telon2_ypos);
  textAlign(CENTER, CENTER);

  textFont(titulo);
  if (telon2_ypos>-1000) {
    telon2_ypos=telon2_ypos-10;
  }
  if (telon2_ypos>0) {
    image(telon2, 0, 0);
    fill(0, 70);
    textSize(60);
    text("Bungee Jumping Simulator", 3, 3, 945, 525);
    fill(255);
    text("Bungee Jumping Simulator", 0, 0, 945, 525);
  } else {
    fill(0, 70);
    textSize(60);
    text("Bungee Jumping Simulator", 3, telon2_ypos+3, 945, 525);
    fill(255);
    text("Bungee Jumping Simulator", 0, telon2_ypos, 945, 525);
  }
}


























//MENU ELEGIR MUNDO
void elegirMundo() {
  image(bg, 0, 0);
  image(v_elegirMundo, 122, 70);
  pantallaAnterior=2;


  //texto
  textAlign(CENTER, CENTER);
  textFont(titulo);
  textSize(23);
  fill(#999999);
  text(m_elegirMundo, 474, 119);


  textAlign(LEFT, CENTER);
  textFont(cuerpo);
  textSize(18);   
  text(m_elegirMundo_mundoReal, 243, 172);
  text(m_elegirMundo_mundoIdeal, 505, 172);



  textAlign(CENTER, CENTER);
  text(regresar, 521, 390);

  image(v_elegirMundo_mundoReal, 233, 196);
  image(v_elegirMundo_mundoIdeal, 495, 196);

  if (mundo==0) {
    fill(#999999, 100);
  } else {
    fill(#999999);
  }
  text(continuar, 675, 390); 

  //boton regresar
  if (mouseX > 449 && mouseX < 589 && mouseY > 369 && mouseY < 418) {
    image(v_elegirMundo_b1_s, 449, 369);
    fill(255);
    text(regresar, 521, 390);
    if (mousePressed == true) {
      image(v_elegirMundo_b1_p, 449, 369);
      text(regresar, 521, 394);
    }
  }

  //tarjeta mundo real
  if (mouseX > 219 && mouseX < 464 && mouseY > 146 && mouseY < 339) {
    image(v_elegirMundo_mundoReal, 233, 196); 
    image(v_elegirMundo_tarjeta_s, 219, 146);



    textAlign(LEFT, CENTER);
    textFont(cuerpo);
    textSize(18);  
    fill(#838383);
    text(m_elegirMundo_mundoReal, 243, 172);
    image(chulito, 420, 160);
    textSize(15);  
    fill(0);
    text(d_mundoReal, 244, 207, 195, 105);

    if (mousePressed == true) {

      image(v_elegirMundo_tarjeta_p, 219, 146);
      if (mundo==0) {
        image(chulito_p, 420, 160);
      }
      textSize(18);
      fill(#838383);
      text(m_elegirMundo_mundoReal, 243, 172);
    }
  }

  //tarjeta mundo ideal
  if (mouseX > 481 && mouseX < 726 && mouseY > 146 && mouseY < 339) {
    image(v_elegirMundo_mundoIdeal, 495, 196); 
    image(v_elegirMundo_tarjeta_s, 481, 146);



    textAlign(LEFT, CENTER);
    textFont(cuerpo);
    textSize(18);  
    fill(#838383);
    text(m_elegirMundo_mundoIdeal, 505, 172);
    image(chulito, 682, 160);
    textSize(15);  
    fill(0);
    text(d_mundoIdeal, 506, 207, 195, 105);

    if (mousePressed == true) {

      image(v_elegirMundo_tarjeta_p, 481, 146);
      if (mundo==0) {
        image(chulito_p, 682, 160);
      }
      textSize(18);
      fill(#838383);
      text(m_elegirMundo_mundoIdeal, 505, 172);
    }
  }

  switch(mundo) {

    //tarjeta mundo real
  case 1: 
    image(v_elegirMundo_tarjeta_e, 219, 146);
    image(chulito_e, 420, 160);
    textSize(18);
    textAlign(LEFT, CENTER);
    textFont(cuerpo);
    textSize(18);  
    fill(#838383);              
    if (mousePressed == true) { 
      if (mouseX > 219 && mouseX < 464 && mouseY > 146 && mouseY < 339) {
        image(v_elegirMundo_tarjeta_e_p, 219, 146);
        image(chulito_e_p, 420, 160);
      }
      if (mouseX > 481 && mouseX < 726 && mouseY > 146 && mouseY < 339) {
        image(chulito_p, 682, 160);
      }
    }
    text(m_elegirMundo_mundoReal, 243, 172);
    textAlign(CENTER, CENTER);
    break;


    //tarjeta mundo ideal
  case 2:   
    image(v_elegirMundo_tarjeta_e, 481, 146);
    image(chulito_e, 682, 160);
    textSize(18);
    textAlign(LEFT, CENTER);
    textFont(cuerpo);
    textSize(18);  
    fill(#838383);           
    if (mousePressed == true) {
      if (mouseX > 481 && mouseX < 726 && mouseY > 146 && mouseY < 339) {
        image(v_elegirMundo_tarjeta_e_p, 481, 146);
        image(chulito_e_p, 682, 160);
      }
      if (mouseX > 219 && mouseX < 464 && mouseY > 146 && mouseY < 339) {
        image(chulito_p, 420, 160);
      }
    }
    text(m_elegirMundo_mundoIdeal, 505, 172);
    textAlign(CENTER, CENTER);
    break;
  }

  if (mundo!=0) {
    //boton continuar
    if (mouseX > 603 && mouseX < 743 && mouseY > 369 && mouseY < 418) {
      image(v_elegirMundo_b2_s, 603, 369);
      fill(255);
      text(continuar, 675, 390);
      if (mousePressed == true) {
        image(v_elegirMundo_b2_p, 603, 369);
        text(continuar, 675, 394);
      }
    }
  }
}   
//fin elegir mundo





void transicion1() {
  image(bg, 0, 0);

  mundo=0;

  if (pantallaAnterior==0) {


    cuadroActual = (cuadroActual+1) % numCuadros;
    image(t1[(cuadroActual) % numCuadros], 122, 70);

    if (cuadroActual==17) {
      gameScreen=2;
      cuadroActual=17;
    }
  }
  if (pantallaAnterior==2) {


    cuadroActual = (cuadroActual-1) % numCuadros;
    image(t1[(cuadroActual) % numCuadros], 122, 70);

    if (cuadroActual==0) {
      gameScreen=0;
      cuadroActual=0;
    }
  }
}

void transicion2() {

  image(fondosim, 0, 0);
  image(temporal, 848, 0);
  image(telon1, 0, telon1_ypos);
  textAlign(CENTER, CENTER);
  textFont(titulo);
  textSize(36);



  image(telon1, 0, telon2_ypos);
  if (telon1_ypos>-1000) {
    telon1_ypos=telon1_ypos-10;
  }
  if (telon1_ypos>0) {
    image(telon1, 0, 0);
  }
  text(abriendo, width/2, height/2+telon1_ypos);


  if (telon1_ypos<-600) {
    if (xpos<=50) {
      der=true;
    } else {
      der=false;
    }
    if (xpos==50) {
      sub=true;
    }
    if (ypos==105) {
      sub=false;
      der=true;
    }
    if (xpos==90) {
      der=false;
    }

    if (der==true) {
      if (ypos==401) {
        xpos=xpos+vel1;
        cuadroActual_p = (cuadroActual_p+1) % numCuadros_p;
        image(pasos[(cuadroActual_p) % numCuadros_p], xpos, ypos);
      } else {
        xpos=xpos+vel2;
        cuadroActual_p = (cuadroActual_p+1) % numCuadros_p;
        image(pasos[(cuadroActual_p) % numCuadros_p], xpos, ypos);
      }
    }

    if (sub==true) {
      ypos=ypos-vel1;
      cuadroActual_p = (cuadroActual_p+1) % numCuadros_p;
      image(escalar[(cuadroActual_p) % numCuadros_p], xpos, ypos);
    }

    if (sub == false && der==false) {
      image(quieto, xpos, ypos);
    }


    if (xpos==90) {

      if (mundo==1) {
        gameScreen=4;
        
      } else {
        gameScreen=5;
      }
    }
  }
}

//MENU AJUSTES
void ajustes() {
  image(bg, 0, 0);
  image(v_ajustes, 70, 63+ajustes_coor_y);
  pantallaAnterior=6;
  
  
  
  //BOTONES
  //Atrás
  if (mouseX > 110 && mouseX < 154 && mouseY > 68+ajustes_coor_y && mouseY < 104+ajustes_coor_y) {
    image(v_ajustes_b1_s, 110, 68+ajustes_coor_y);
    if (mousePressed) {
      image(v_ajustes_b1_p, 110, 68+ajustes_coor_y);
    }
  }
  //Restablecer
  if (mouseX > 791 && mouseX < 835 && mouseY > 68+ajustes_coor_y && mouseY < 104+ajustes_coor_y) {
    image(v_ajustes_b2_s, 791, 68+ajustes_coor_y);
    if (mousePressed) {
      image(v_ajustes_b2_p, 791, 68+ajustes_coor_y);
    }
  }

  //titulo
  textAlign(CENTER, CENTER);
  textFont(titulo);
  fill(0, 50);
  textSize(24);
  text(ajustes, 474, 85+ajustes_coor_y);
  fill(255);
  text(ajustes, 472, 83+ajustes_coor_y);

  //categorias
  fill(#9c9c9c, 220);
  textSize(19);
  text(general, 277, 127+ajustes_coor_y);
  text(personalizacion, 672, 127+ajustes_coor_y);

  //subcategorias
  textAlign(RIGHT, CENTER);
  fill(#b0b0b0);
  textSize(17);
  text(accesibilidad, 426, 163+ajustes_coor_y);
  text(S_personaje, 824, 163+ajustes_coor_y);
  text(audio, 426, 326+ajustes_coor_y);
  text(S_fondo, 824, 286+ajustes_coor_y);

  //opciones
  textAlign(LEFT, CENTER);
  textFont(cuerpo);
  fill(#999999);
  textSize(17);
  text(S_idioma, 123, 209+ajustes_coor_y);
  fill(#999999, 0);
  text(mensajes, 123, 238+ajustes_coor_y, 242, 50);
  text(sonido, 123, 364+ajustes_coor_y);
  text(musica, 123, 400+ajustes_coor_y);
    
  
  fill(#999999);

  text(disponible, 123, 380+ajustes_coor_y);
  text(disponible, 123, 250+ajustes_coor_y);
  noStroke();
  rect(393, 245, 40, 35);
  rect(384, 345, 40, 70);


  
  fill(#ababab);
  textSize(16);
  text(S_idioma_actual, 273, 211+ajustes_coor_y);
  if (B_a_idiomas==true) {
    a_idiomas_cuadroActual = (a_idiomas_cuadroActual+1) % a_idiomas_numCuadros;
    image(a_idiomas[(a_idiomas_cuadroActual) % a_idiomas_numCuadros], 256, 195+ajustes_coor_y);
  }
  if (a_idiomas_cuadroActual==a_idiomas_numCuadros-1) {
    B_idiomas_expandido=true;
  }

  //idiomas expandido
  if (B_idiomas_expandido) {
    image(idiomas_expandido, 256, 195+ajustes_coor_y);
    textAlign(LEFT, CENTER);
    textFont(cuerpo);
    fill(#ababab);
    textSize(16);

    //Resaltar idioma elegido
    switch(idioma) {
    default: 
      image(idiomas_e_E, 260, 236+ajustes_coor_y);
      break;
    case 1:  
      image(idiomas_e_E, 260, 220+ajustes_coor_y);
      break;
    case 2:  
      image(idiomas_e_E, 260, 252+ajustes_coor_y);
      break;
    case 3:  
      image(idiomas_e_E, 260, 204+ajustes_coor_y);
      break;
    case 4:  
      image(idiomas_e_E, 260, 284+ajustes_coor_y);
      break;
    case 5:  
      image(idiomas_e_E, 260, 268+ajustes_coor_y);
      break;
    }
    //Resaltar idioma seleccionado
    //Español
    if (mouseX > 260 && mouseX < 421 && mouseY >= 236+ajustes_coor_y && mouseY < 252+ajustes_coor_y) {
      image(idiomas_s_E, 260, 236+ajustes_coor_y);   
      if (mousePressed) {
        image(idiomas_p_E, 260, 236+ajustes_coor_y);
      }
    }
    //Ingles
    if (mouseX > 260 && mouseX < 421 && mouseY >= 220+ajustes_coor_y && mouseY < 236+ajustes_coor_y) {
      image(idiomas_s_E, 260, 220+ajustes_coor_y);    
      if (mousePressed) {
        image(idiomas_p_E, 260, 220+ajustes_coor_y);
      }
    }
    //Frances
    if (mouseX > 260 && mouseX < 421 && mouseY >= 252+ajustes_coor_y && mouseY < 268+ajustes_coor_y) {
      image(idiomas_s_E, 260, 252+ajustes_coor_y);    
      if (mousePressed) {
        image(idiomas_p_E, 260, 252+ajustes_coor_y);
      }
    }
    //Aleman
    if (mouseX > 260 && mouseX < 421 && mouseY >= 204+ajustes_coor_y && mouseY < 220+ajustes_coor_y) {
      image(idiomas_s_E, 260, 204+ajustes_coor_y);    
      if (mousePressed) {
        image(idiomas_p_E, 260, 204+ajustes_coor_y);
      }
    }
    //Portugues
    if (mouseX > 260 && mouseX < 421 && mouseY >= 284+ajustes_coor_y && mouseY < 300+ajustes_coor_y) {
      image(idiomas_s_E, 260, 284+ajustes_coor_y);    
      if (mousePressed) {
        image(idiomas_p_E, 260, 284+ajustes_coor_y);
      }
    }
    //Italiano
    if (mouseX > 260 && mouseX < 421 && mouseY >= 268+ajustes_coor_y && mouseY < 284+ajustes_coor_y) {
      image(idiomas_s_E, 260, 268+ajustes_coor_y);  
      if (mousePressed) {
        image(idiomas_p_E, 260, 268+ajustes_coor_y);
      }
    }


    text("Deutsch", 272, 210+ajustes_coor_y);
    text("English", 272, 226+ajustes_coor_y);
    text("Español", 272, 242+ajustes_coor_y);
    text("Français", 272, 258+ajustes_coor_y);
    text("Italiano", 272, 274+ajustes_coor_y);
    text("Português", 272, 290+ajustes_coor_y);
  } else {

    if (mouseX > 260 && mouseX < 421 && mouseY >= 201+ajustes_coor_y && mouseY < 224+ajustes_coor_y) {
      image(idiomas_s, 260, 201+ajustes_coor_y);
      if (mousePressed) {
        image(idiomas_p, 260, 201+ajustes_coor_y);
      }
    }



    //PERSONALIZACION
    textAlign(CENTER, CENTER);
    fill(0, 120);
    textFont(cuerpo);
    textSize(11);

    //Personajes
    if (B_idiomas_expandido==false) {
      //A
      if (mouseX > 534 && mouseX < 572 && mouseY >= 184+ajustes_coor_y && mouseY < 254+ajustes_coor_y) {
        image(a_s, 534, 184+ajustes_coor_y);
        if (mousePressed) {
          image(a_p, 534, 184+ajustes_coor_y);
        }
        if (personaje == 2 || personaje == 3 || personaje == 4 || personaje == 5) {
          text(basico, 554, 193+ajustes_coor_y);
        }
      }
      //B
      if (mouseX > 593 && mouseX < 631 && mouseY >= 184+ajustes_coor_y && mouseY < 254+ajustes_coor_y) {
        image(b_s, 593, 184+ajustes_coor_y);
        if (mousePressed) {
          image(b_p, 593, 184+ajustes_coor_y);
        }
        if (personaje!=2) {
          text(rocio, 613, 193+ajustes_coor_y);
        }
      }
      //C
      if (mouseX > 652 && mouseX < 690 && mouseY >= 184+ajustes_coor_y && mouseY < 254+ajustes_coor_y) {
        image(c_s, 652, 184+ajustes_coor_y);
        if (mousePressed) {
          image(c_p, 652, 184+ajustes_coor_y);
        }
        if (personaje!=3) {
          text(aventurero, 672, 193+ajustes_coor_y);
        }
      }
    }
    //D
    if (mouseX > 711 && mouseX < 749 && mouseY >= 184+ajustes_coor_y && mouseY < 254+ajustes_coor_y) {
      image(d_s, 711, 184+ajustes_coor_y);
      if (mousePressed) {
        image(d_p, 711, 184+ajustes_coor_y);
      }

      if (personaje!=4) {
        text(soldado, 731, 193+ajustes_coor_y);
      }
    }
    //E
    if (mouseX > 770 && mouseX < 808 && mouseY >= 184+ajustes_coor_y && mouseY < 254+ajustes_coor_y) {
      image(e_s, 770, 184+ajustes_coor_y);
      if (mousePressed) {
        image(e_p, 770, 184+ajustes_coor_y);
      }

      if (personaje!=5) {
        text(zombie, 790, 193+ajustes_coor_y);
      }
    }


    //fondos
    //flecha izquierda
    if (mouseX > 501 && mouseX < 523 && mouseY > 306+ajustes_coor_y && mouseY < 422+ajustes_coor_y && tema!=1) {
      image(flecha_der_s, 501, 306+ajustes_coor_y);
      if (mousePressed) {
        image(flecha_der_p, 501, 306+ajustes_coor_y);
      }
    }
    //flecha derecha
    if (mouseX > 819 && mouseX < 841 && mouseY > 306+ajustes_coor_y && mouseY < 422+ajustes_coor_y && tema!=3) {
      image(flecha_izq_s, 819, 306+ajustes_coor_y);
      if (mousePressed) {
        image(flecha_izq_p, 819, 306+ajustes_coor_y);
      }
    }
  }
  if (tema==1) {
    image(flecha_der_i, 501, 306+ajustes_coor_y);
  }
  if (tema==3) {
    image(flecha_izq_i, 819, 306+ajustes_coor_y);
  }


  //fondos
  switch(tema) {
  default: 
    image(fondo1, 525, 306+ajustes_coor_y);
    break;
  case 2:  
    image(fondo2, 525, 306+ajustes_coor_y);
    break;
  case 3:  
    image(fondo3, 525, 306+ajustes_coor_y);
    break;
  }


  switch(personaje) {
  default: 
    personaje_e_X=545;
    break;
  case 2: 
    personaje_e_X=604;
    break;
  case 3: 
    personaje_e_X=663;
    break;
  case 4: 
    personaje_e_X=722;
    break;
  case 5: 
    personaje_e_X=781;
    break;
  }
  image(personaje_e, personaje_e_X, 190+ajustes_coor_y);
}




void mundoIdeal() {
  amortiguamiento_default=0;
  pantallaAnterior=5;
  image(fondosim, 0, 0);
  if (B_salto==false) {
    image(quieto, xpos, ypos);
  }

  image(ventana_fase1, 404, 71+v_simulador_f1_ypos);
  //Altura
  image(contadores, 569, 121+v_simulador_f1_ypos);
  //Masa
  image(contadores, 569, 165+v_simulador_f1_ypos);
  //Cuerda
  image(contadores, 569, 219+v_simulador_f1_ypos);
  //Elasticidad
  image(contadores, 569, 284+v_simulador_f1_ypos);

  //Animacion de la ventana
  if (a_f1) {
    if (a_f1_bajar) {
      if (v_simulador_f1_ypos<=10) {
        v_simulador_f1_ypos=v_simulador_f1_ypos+8;
        if (v_simulador_f1_ypos==8) {
          a_f1_bajar=false;
        }
      }
    } else {
      if (v_simulador_f1_ypos>0) {
        v_simulador_f1_ypos=v_simulador_f1_ypos-2;
        if (v_simulador_f1_ypos==0) {
          a_f1=false;
        }
      }
    }
  }
  //Salir
  //normal
  image(v_simulador_b5_n, 426, 341+v_simulador_f1_ypos);
  textAlign(CENTER, CENTER);
  fill(#999999);
  textSize(16);
  //seleccionado
  if (mouseX > 426 && mouseX < 476 && mouseY > 341 && mouseY < 383 && a_f1==false && exit_sim==false) {
    image(v_simulador_b5_s, 426, 341);
    fill(255);
    if (mousePressed) {
      image(v_simulador_b5_p, 426, 341);
    }
  }


  //Restablecer
  //normal
  image(v_simulador_b1_n, 728, 341+v_simulador_f1_ypos);
  //seleccionado
  if (mouseX > 728 && mouseX < 778 && mouseY > 341 && mouseY < 382 && a_f1==false && exit_sim==false) {
    image(v_simulador_b1_s, 728, 341);
    //presionado
    if (mousePressed) {
      image(v_simulador_b1_p, 728, 341);
    }
  }

  //Reproducir
  //normal
  image(v_simulador_b2_n, 778, 341+v_simulador_f1_ypos);
  //seleccionado
  if (mouseX > 778 && mouseX < 828 && mouseY > 341 && mouseY < 382 && a_f1==false && exit_sim==false) {
    image(v_simulador_b2_s, 778, 341);
    //presionado
    if (mousePressed) {
      image(v_simulador_b2_p, 778, 341);
    }
  }

  //Titulo ventana
  textAlign(CENTER, CENTER);
  fill(255);
  textFont(titulo);
  textSize(18); 
  text(ingreso, 404, 71+v_simulador_f1_ypos, 446, 32);

  textAlign(LEFT, CENTER);
  textFont(cuerpo);
  fill(#999999);
  textSize(16);
  text(S_altura, 426, 116+v_simulador_f1_ypos, 137, 42);
  text(S_masa, 426, 158+v_simulador_f1_ypos, 137, 42);
  text(S_cuerda, 426, 204+v_simulador_f1_ypos, 127, 63);
  text(S_elasticidad, 426, 269+v_simulador_f1_ypos, 127, 63);


  textAlign(CENTER, CENTER);
  fill(255);
  textSize(12);


  if (a_f1==false && exit_sim==false) {
    //Altura
    //+10
    if (altura==altura_lim_sup) {
      image(v_simulador_b3_i, 753, 125);
      image(v_simulador_b4_i, 797, 125);
    } else if (mouseX > 753 && mouseX < 791 && mouseY > 125 && mouseY < 150) {
      image(v_simulador_b3_s, 753, 125);
      if (mousePressed) {
        image(v_simulador_b3_p, 753, 125);
      }
    } else
      //+1
      if (mouseX > 797 && mouseX < 827 && mouseY > 125 && mouseY < 150) {
        image(v_simulador_b4_s, 797, 125);
        if (mousePressed) {
          image(v_simulador_b4_p, 797, 125);
        }
      }

    //-10
    if (altura==altura_lim_inf) {
      image(v_simulador_b3_i, 605, 125);
      image(v_simulador_b4_i, 569, 125);
    } else if (mouseX > 605 && mouseX < 643 && mouseY > 125 && mouseY < 150) {
      image(v_simulador_b3_s, 605, 125);
      if (mousePressed) {
        image(v_simulador_b3_p, 605, 125);
      }
    } else
      //-1
      if (mouseX > 569 && mouseX < 599 && mouseY > 125 && mouseY < 150) {
        image(v_simulador_b4_s, 569, 125);
        if (mousePressed) {
          image(v_simulador_b4_p, 569, 125);
        }
      }




    //Masa
    if (masa==masa_lim_sup) {
      image(v_simulador_b3_i, 753, 169);
      image(v_simulador_b4_i, 797, 169);
    } else
      //+10
      if (mouseX > 753 && mouseX < 791 && mouseY > 169 && mouseY < 194) {
        image(v_simulador_b3_s, 753, 169);
        if (mousePressed) {
          image(v_simulador_b3_p, 753, 169);
        }
      } else
        //+1
        if (mouseX > 797 && mouseX < 827 && mouseY > 169 && mouseY < 194) {
          image(v_simulador_b4_s, 797, 169);
          if (mousePressed) {
            image(v_simulador_b4_p, 797, 169);
          }
        }

    if (masa==masa_lim_inf) {
      image(v_simulador_b3_i, 605, 169);
      image(v_simulador_b4_i, 569, 169);
    } else
      //-10
      if (mouseX > 605 && mouseX < 643 && mouseY > 169 && mouseY < 194) {
        image(v_simulador_b3_s, 605, 169);
        if (mousePressed) {
          image(v_simulador_b3_p, 605, 169);
        }
      } else
        //-1
        if (mouseX > 569 && mouseX < 599 && mouseY > 169 && mouseY < 194) {
          image(v_simulador_b4_s, 569, 169);
          if (mousePressed) {
            image(v_simulador_b4_p, 569, 169);
          }
        }

    //Cuerda
    if (cuerda==cuerda_lim_sup) {
      image(v_simulador_b3_i, 753, 223);
      image(v_simulador_b4_i, 797, 223);
    } else
      //+10
      if (mouseX > 753 && mouseX < 791 && mouseY > 223 && mouseY < 248) {
        image(v_simulador_b3_s, 753, 223);
        if (mousePressed) {
          image(v_simulador_b3_p, 753, 223);
        }
      } else
        //+1
        if (mouseX > 797 && mouseX < 827 && mouseY > 223 && mouseY < 248) {
          image(v_simulador_b4_s, 797, 223);
          if (mousePressed) {
            image(v_simulador_b4_p, 797, 223);
          }
        }


    if (cuerda==cuerda_lim_inf) {
      image(v_simulador_b3_i, 605, 223);
      image(v_simulador_b4_i, 569, 223);
    } else
      //-10
      if (mouseX > 605 && mouseX < 643 && mouseY > 223 && mouseY < 248) {
        image(v_simulador_b3_s, 605, 223);
        if (mousePressed) {
          image(v_simulador_b3_p, 605, 223);
        }
      } else
        //-1
        if (mouseX > 569 && mouseX < 599 && mouseY > 223 && mouseY < 248) {
          image(v_simulador_b4_s, 569, 223);
          if (mousePressed) {
            image(v_simulador_b4_p, 569, 223);
          }
        }


    //Elasticidad
    if (elasticidad==elasticidad_lim_sup) {
      image(v_simulador_b3_i, 753, 288);
      image(v_simulador_b4_i, 797, 288);
    } else
      //+10
      if (mouseX > 753 && mouseX < 791 && mouseY > 288 && mouseY < 313) {
        image(v_simulador_b3_s, 753, 288);
        if (mousePressed) {
          image(v_simulador_b3_p, 753, 288);
        }
      } else
        //+1
        if (mouseX > 797 && mouseX < 827 && mouseY > 288 && mouseY < 313) {
          image(v_simulador_b4_s, 797, 288);
          if (mousePressed) {
            image(v_simulador_b4_p, 797, 288);
          }
        }


    if (elasticidad==elasticidad_lim_inf) {
      image(v_simulador_b3_i, 605, 288);
      image(v_simulador_b4_i, 569, 288);
    } else
      //-10
      if (mouseX > 605 && mouseX < 643 && mouseY > 288 && mouseY < 313) {
        image(v_simulador_b3_s, 605, 288);
        if (mousePressed) {
          image(v_simulador_b3_p, 605, 288);
        }
      } else
        //-1
        if (mouseX > 569 && mouseX < 599 && mouseY > 288 && mouseY < 313) {
          image(v_simulador_b4_s, 569, 288);
          if (mousePressed) {
            image(v_simulador_b4_p, 569, 288);
          }
        }
  }

  //Botones
  //Altura
  text("-1", 586, 135+v_simulador_f1_ypos);
  text("-10", 625, 135+v_simulador_f1_ypos);
  text("+10", 773, 135+v_simulador_f1_ypos);
  text("+1", 813, 135+v_simulador_f1_ypos);

  //Masa
  text("-1", 586, 179+v_simulador_f1_ypos);
  text("-10", 625, 179+v_simulador_f1_ypos);
  text("+10", 773, 179+v_simulador_f1_ypos);
  text("+1", 813, 179+v_simulador_f1_ypos);

  //Cuerda
  text("-1", 586, 233+v_simulador_f1_ypos);
  text("-10", 625, 233+v_simulador_f1_ypos);
  text("+10", 773, 233+v_simulador_f1_ypos);
  text("+1", 813, 233+v_simulador_f1_ypos);


  //Elasticidad
  text("-1", 586, 298+v_simulador_f1_ypos);
  text("-10", 625, 298+v_simulador_f1_ypos);
  text("+10", 773, 298+v_simulador_f1_ypos);
  text("+1", 813, 298+v_simulador_f1_ypos);

  textSize(16);
  fill(#999999);
  text(altura+" m", 700, 135+v_simulador_f1_ypos);
  text(masa+" kg", 700, 179+v_simulador_f1_ypos);
  text(cuerda+" m", 700, 233+v_simulador_f1_ypos);
  text(elasticidad, 700, 298+v_simulador_f1_ypos);






  if (B_salto==true) {
    salto_cuadroActual_p = (salto_cuadroActual_p+1) % salto_numCuadros_p;
    image(salto[(salto_cuadroActual_p) % salto_numCuadros_p], 84, 70);
  }
  if (salto_cuadroActual_p==salto_numCuadros_p-1) {
    gameScreen=12;
    B_salto=false;
    salto_cuadroActual_p=0;
  }

  if (B_cubrir_personaje && B_salto==false) {
 //   image(cubrir_personaje, 79, 101);
  }



  if (exit_sim==true) {
    fill(0, 170);
    rect(0, 0, 945, 525);
    image(v_salir, 297, 194);
    textFont(titulo);
    textSize(18); 
    fill(255);    
    text(m_salir, 325, 204, 294, 54);
    textFont(cuerpo);
    fill(0);
    textSize(18);
    text(cancelar, 396, 286);
    text(aceptar, 550, 286);


    //cancelar
    if (mouseX > 325 && mouseX < 465 &&  mouseY > 265 && mouseY < 314) {
      image(v_salir_b1_s, 325, 265);
      text(cancelar, 396, 286);
      if (mousePressed==true) {
        image(v_salir_b1_p, 325, 265);  
        text(cancelar, 396, 290);
      }
    }
    //fin cancelar

    //aceptar
    if (mouseX > 479 && mouseX < 619 && mouseY > 265 && mouseY < 314) {
      image(v_salir_b2_s, 479, 265);
      text(aceptar, 550, 286);
      if (mousePressed==true) {
        image(v_salir_b2_p, 479, 265);
        text(aceptar, 550, 290);
      }
    }
    //fin aceptar
  }
}

//CREDITOS
void creditos() {
  pantallaAnterior=7;
  image(bg, 0, 0);
  image(v_instrucciones, 70, 57);
  //titulo
  textAlign(CENTER, CENTER);
  textFont(titulo);
  fill(0, 50);
  textSize(24);
  text(creditos, 474, 79);
  fill(255);
  text(creditos, 472, 77);
  //BOTONES
  //Atrás
  if (mouseX > 110 && mouseX < 154 && mouseY > 62 && mouseY < 98) {
    image(b_amarillo1_s, 110, 62);
    if (mousePressed) {
      image(b_amarillo1_p, 110, 62);
    }
  }
}

//
void instrucciones() {
  pantallaAnterior=8;
  image(bg, 0, 0);
  image(v_instrucciones, 70, 57);
  //titulo
  textAlign(CENTER, CENTER);
  textFont(titulo);
  fill(0, 50);
  textSize(24);
  text(instrucciones, 474, 79);
  fill(255);
  text(instrucciones, 472, 77);
  textFont(cuerpo);
  fill(#999999);
  textSize(32);
  text(bienvenida, 160, 120, 625, 100);
  textAlign(LEFT, CENTER);
  textSize(16);
  text(texto_instrucciones, 130, 220, 685, 180);
  //BOTONES
  //Atrás
  if (mouseX > 110 && mouseX < 154 && mouseY > 62 && mouseY < 98) {
    image(b_amarillo1_s, 110, 62);
    if (mousePressed) {
      image(b_amarillo1_p, 110, 62);
    }
  }
}




void mundoReal() {
  pantallaAnterior=4;
  image(fondosim, 0, 0);
  if (B_salto==false && gameScreen!=12) {
    image(quieto, xpos, ypos);
  }

  image(ventana_fase2, 404, 71+v_simulador_f1_ypos);
  //Altura
  image(contadores, 569, 121+v_simulador_f1_ypos);
  //Masa
  image(contadores, 569, 165+v_simulador_f1_ypos);
  //Cuerda
  image(contadores, 569, 219+v_simulador_f1_ypos);
  //Elasticidad
  image(contadores, 569, 284+v_simulador_f1_ypos);
  //Amortiguamiento
  image(contadores, 569, 349+v_simulador_f1_ypos);

  //Animacion de la ventana
  if (a_f1) {
    if (a_f1_bajar) {
      if (v_simulador_f1_ypos<=10) {
        v_simulador_f1_ypos=v_simulador_f1_ypos+8;
        if (v_simulador_f1_ypos==8) {
          a_f1_bajar=false;
        }
      }
    } else {
      if (v_simulador_f1_ypos>0) {
        v_simulador_f1_ypos=v_simulador_f1_ypos-2;
        if (v_simulador_f1_ypos==0) {
          a_f1=false;
        }
      }
    }
  }
  //Salir
  //normal
  image(v_simulador_b5_n, 426, 406+v_simulador_f1_ypos);
  textAlign(CENTER, CENTER);
  fill(#999999);
  textSize(16);
  //seleccionado
  if (mouseX > 426 && mouseX < 476 && mouseY > 406 && mouseY < 447 && a_f1==false && exit_sim==false) {
    image(v_simulador_b5_s, 426, 406);
    fill(255);
    if (mousePressed) {
      image(v_simulador_b5_p, 426, 406);
    }
  }


  //Restablecer
  //normal
  image(v_simulador_b1_n, 728, 406+v_simulador_f1_ypos);
  //seleccionado
  if (mouseX > 728 && mouseX < 778 && mouseY > 406 && mouseY < 447 && a_f1==false && exit_sim==false) {
    image(v_simulador_b1_s, 728, 406);
    //presionado
    if (mousePressed) {
      image(v_simulador_b1_p, 728, 406);
    }
  }

  //Reproducir
  //normal
  image(v_simulador_b2_n, 778, 406+v_simulador_f1_ypos);
  //seleccionado
  if (mouseX > 778 && mouseX < 828 && mouseY > 406 && mouseY < 447 && a_f1==false && exit_sim==false) {
    image(v_simulador_b2_s, 778, 406);
    //presionado
    if (mousePressed) {
      image(v_simulador_b2_p, 778, 406);
    }
  }

  //Titulo ventana
  textAlign(CENTER, CENTER);
  fill(255);
  textFont(titulo);
  textSize(18); 
  text(ingreso, 404, 71+v_simulador_f1_ypos, 446, 32);

  textAlign(LEFT, CENTER);
  textFont(cuerpo);
  fill(#999999);
  textSize(16);
  text(S_altura, 426, 116+v_simulador_f1_ypos, 137, 42);
  text(S_masa, 426, 158+v_simulador_f1_ypos, 137, 42);
  text(S_cuerda, 426, 204+v_simulador_f1_ypos, 127, 63);
  text(S_elasticidad, 426, 269+v_simulador_f1_ypos, 127, 63);
  text(S_amortiguamiento, 426, 334+v_simulador_f1_ypos, 127, 63);


  textAlign(CENTER, CENTER);
  fill(255);
  textSize(12);


  if (a_f1==false && exit_sim==false) {
    //Altura
    //+10
    if (altura==altura_lim_sup) {
      image(v_simulador_b3_i, 753, 125);
      image(v_simulador_b4_i, 797, 125);
    } else if (mouseX > 753 && mouseX < 791 && mouseY > 125 && mouseY < 150) {
      image(v_simulador_b3_s, 753, 125);
      if (mousePressed) {
        image(v_simulador_b3_p, 753, 125);
      }
    } else
      //+1
      if (mouseX > 797 && mouseX < 827 && mouseY > 125 && mouseY < 150) {
        image(v_simulador_b4_s, 797, 125);
        if (mousePressed) {
          image(v_simulador_b4_p, 797, 125);
        }
      }

    //-10
    if (altura==altura_lim_inf) {
      image(v_simulador_b3_i, 605, 125);
      image(v_simulador_b4_i, 569, 125);
    } else if (mouseX > 605 && mouseX < 643 && mouseY > 125 && mouseY < 150) {
      image(v_simulador_b3_s, 605, 125);
      if (mousePressed) {
        image(v_simulador_b3_p, 605, 125);
      }
    } else
      //-1
      if (mouseX > 569 && mouseX < 599 && mouseY > 125 && mouseY < 150) {
        image(v_simulador_b4_s, 569, 125);
        if (mousePressed) {
          image(v_simulador_b4_p, 569, 125);
        }
      }




    //Masa
    if (masa==masa_lim_sup) {
      image(v_simulador_b3_i, 753, 169);
      image(v_simulador_b4_i, 797, 169);
    } else
      //+10
      if (mouseX > 753 && mouseX < 791 && mouseY > 169 && mouseY < 194) {
        image(v_simulador_b3_s, 753, 169);
        if (mousePressed) {
          image(v_simulador_b3_p, 753, 169);
        }
      } else
        //+1
        if (mouseX > 797 && mouseX < 827 && mouseY > 169 && mouseY < 194) {
          image(v_simulador_b4_s, 797, 169);
          if (mousePressed) {
            image(v_simulador_b4_p, 797, 169);
          }
        }

    if (masa==masa_lim_inf) {
      image(v_simulador_b3_i, 605, 169);
      image(v_simulador_b4_i, 569, 169);
    } else
      //-10
      if (mouseX > 605 && mouseX < 643 && mouseY > 169 && mouseY < 194) {
        image(v_simulador_b3_s, 605, 169);
        if (mousePressed) {
          image(v_simulador_b3_p, 605, 169);
        }
      } else
        //-1
        if (mouseX > 569 && mouseX < 599 && mouseY > 169 && mouseY < 194) {
          image(v_simulador_b4_s, 569, 169);
          if (mousePressed) {
            image(v_simulador_b4_p, 569, 169);
          }
        }

    //Cuerda
    if (cuerda==cuerda_lim_sup) {
      image(v_simulador_b3_i, 753, 223);
      image(v_simulador_b4_i, 797, 223);
    } else
      //+10
      if (mouseX > 753 && mouseX < 791 && mouseY > 223 && mouseY < 248) {
        image(v_simulador_b3_s, 753, 223);
        if (mousePressed) {
          image(v_simulador_b3_p, 753, 223);
        }
      } else
        //+1
        if (mouseX > 797 && mouseX < 827 && mouseY > 223 && mouseY < 248) {
          image(v_simulador_b4_s, 797, 223);
          if (mousePressed) {
            image(v_simulador_b4_p, 797, 223);
          }
        }


    if (cuerda==cuerda_lim_inf) {
      image(v_simulador_b3_i, 605, 223);
      image(v_simulador_b4_i, 569, 223);
    } else
      //-10
      if (mouseX > 605 && mouseX < 643 && mouseY > 223 && mouseY < 248) {
        image(v_simulador_b3_s, 605, 223);
        if (mousePressed) {
          image(v_simulador_b3_p, 605, 223);
        }
      } else
        //-1
        if (mouseX > 569 && mouseX < 599 && mouseY > 223 && mouseY < 248) {
          image(v_simulador_b4_s, 569, 223);
          if (mousePressed) {
            image(v_simulador_b4_p, 569, 223);
          }
        }


    //Amortiguamiento
    if (elasticidad==elasticidad_lim_sup) {
      image(v_simulador_b3_i, 753, 288);
      image(v_simulador_b4_i, 797, 288);
    } else
      //+10
      if (mouseX > 753 && mouseX < 791 && mouseY > 288 && mouseY < 313) {
        image(v_simulador_b3_s, 753, 288);
        if (mousePressed) {
          image(v_simulador_b3_p, 753, 288);
        }
      } else
        //+1
        if (mouseX > 797 && mouseX < 827 && mouseY > 288 && mouseY < 313) {
          image(v_simulador_b4_s, 797, 288);
          if (mousePressed) {
            image(v_simulador_b4_p, 797, 288);
          }
        }

    if (elasticidad==elasticidad_lim_inf) {
      image(v_simulador_b3_i, 605, 288);
      image(v_simulador_b4_i, 569, 288);
    } else
      //-10
      if (mouseX > 605 && mouseX < 643 && mouseY > 288 && mouseY < 313) {
        image(v_simulador_b3_s, 605, 288);
        if (mousePressed) {
          image(v_simulador_b3_p, 605, 288);
        }
      } else
        //-1
        if (mouseX > 569 && mouseX < 599 && mouseY > 288 && mouseY < 313) {
          image(v_simulador_b4_s, 569, 288);
          if (mousePressed) {
            image(v_simulador_b4_p, 569, 288);
          }
        }

    //Elasticidad
    if (amortiguamiento==amortiguamiento_lim_sup) {
      image(v_simulador_b3_i, 753, 353);
      image(v_simulador_b4_i, 797, 353);
    } else
      //+10
      if (mouseX > 753 && mouseX < 791 && mouseY > 353 && mouseY < 378) {
        image(v_simulador_b3_s, 753, 353);
        if (mousePressed) {
          image(v_simulador_b3_p, 753, 353);
        }
      } else
        //+1
        if (mouseX > 797 && mouseX < 827 && mouseY > 353 && mouseY < 378) {
          image(v_simulador_b4_s, 797, 353);
          if (mousePressed) {
            image(v_simulador_b4_p, 797, 353);
          }
        }

    if (amortiguamiento==amortiguamiento_lim_inf) {
      image(v_simulador_b3_i, 605, 353);
      image(v_simulador_b4_i, 569, 353);
    } else
      //-10
      if (mouseX > 605 && mouseX < 643 && mouseY > 353 && mouseY < 378) {
        image(v_simulador_b3_s, 605, 353);
        if (mousePressed) {
          image(v_simulador_b3_p, 605, 353);
        }
      } else
        //-1
        if (mouseX > 569 && mouseX < 599 && mouseY > 353 && mouseY < 378) {
          image(v_simulador_b4_s, 569, 353);
          if (mousePressed) {
            image(v_simulador_b4_p, 569, 353);
          }
        }
  }

  //Botones
  //Altura
  text("-1", 586, 135+v_simulador_f1_ypos);
  text("-10", 625, 135+v_simulador_f1_ypos);
  text("+10", 773, 135+v_simulador_f1_ypos);
  text("+1", 813, 135+v_simulador_f1_ypos);

  //Masa
  text("-1", 586, 179+v_simulador_f1_ypos);
  text("-10", 625, 179+v_simulador_f1_ypos);
  text("+10", 773, 179+v_simulador_f1_ypos);
  text("+1", 813, 179+v_simulador_f1_ypos);

  //Cuerda
  text("-1", 586, 233+v_simulador_f1_ypos);
  text("-10", 625, 233+v_simulador_f1_ypos);
  text("+10", 773, 233+v_simulador_f1_ypos);
  text("+1", 813, 233+v_simulador_f1_ypos);


  //Elasticidad
  text("-1", 586, 298+v_simulador_f1_ypos);
  text("-10", 625, 298+v_simulador_f1_ypos);
  text("+10", 773, 298+v_simulador_f1_ypos);
  text("+1", 813, 298+v_simulador_f1_ypos);

  //Amortiguamiento
  text("-1", 586, 363+v_simulador_f1_ypos);
  text("-10", 625, 363+v_simulador_f1_ypos);
  text("+10", 773, 363+v_simulador_f1_ypos);
  text("+1", 813, 363+v_simulador_f1_ypos);

  textSize(16);
  fill(#999999);
  text(altura+" m", 700, 135+v_simulador_f1_ypos);
  text(masa+" kg", 700, 179+v_simulador_f1_ypos);
  text(cuerda+" m", 700, 233+v_simulador_f1_ypos);
  text(elasticidad, 700, 298+v_simulador_f1_ypos);
  text(amortiguamiento, 700, 363+v_simulador_f1_ypos);



  if (B_salto==true) {
    salto_cuadroActual_p = (salto_cuadroActual_p+1) % salto_numCuadros_p;
    image(salto[(salto_cuadroActual_p) % salto_numCuadros_p], 84, 70);
  }


  if (salto_cuadroActual_p==salto_numCuadros_p-1) {
    gameScreen=12;
    B_salto=false;
    salto_cuadroActual_p=0;
  }

  if (B_cubrir_personaje && B_salto==false) {
  //  image(cubrir_personaje, 79, 101);
  }



  if (exit_sim==true) {
    fill(0, 170);
    rect(0, 0, 945, 525);
    image(v_salir, 297, 194);
    textFont(titulo);
    textSize(18); 
    fill(255);    
    text(m_salir, 325, 204, 294, 54);
    textFont(cuerpo);
    fill(0);
    textSize(18);
    text(cancelar, 396, 286);
    text(aceptar, 550, 286);


    //cancelar
    if (mouseX > 325 && mouseX < 465 &&  mouseY > 265 && mouseY < 314) {
      image(v_salir_b1_s, 325, 265);
      text(cancelar, 396, 286);
      if (mousePressed==true) {
        image(v_salir_b1_p, 325, 265);  
        text(cancelar, 396, 290);
      }
    }
    //fin cancelar

    //aceptar
    if (mouseX > 479 && mouseX < 619 && mouseY > 265 && mouseY < 314) {
      image(v_salir_b2_s, 479, 265);
      text(aceptar, 550, 286);
      if (mousePressed==true) {
        image(v_salir_b2_p, 479, 265);
        text(aceptar, 550, 290);
      }
    }
    //fin aceptar
  }
}

//transicion menu principal-ajustes
void transicion3() {
  if (pantallaAnterior==0) {
    gameScreen=6;
  } else {
    gameScreen=0;
  }
}

//transicion menu principal-creditos
void transicion12() {
  if (pantallaAnterior==0) {
    gameScreen=7;
  } else {
    gameScreen=0;
  }
}

void simulador() {
  image(fondosim, 0, 0);
  image(ventana_sim, 404, 71);
  
    textAlign(LEFT, CENTER);
    textSize(16);
  fill(#999999);
  text(S_altura+":                   "+altura+" m", 425, 135+180);
  text(S_masa+":                     "+masa+" kg", 425, 150+180);
  text(S_cuerda+":                   "+cuerda+" m", 425, 165+180);
  text(S_elasticidad+":              "+elasticidad, 425, 180+180);
  text(S_amortiguamiento+":          "+amortiguamiento, 425, 195+180);
  textAlign(CENTER, CENTER);
  fill(#999999);
  textSize(16);
 
  
  /*
  //Salir
  //normal
  image(v_simulador_b5_n, 426, 406+v_simulador_f1_ypos);
  //seleccionado
  if (mouseX > 426 && mouseX < 476 && mouseY > 406 && mouseY < 447 && a_f1==false && exit_sim==false) {
    image(v_simulador_b5_s, 426, 406);
    fill(255);
    if (mousePressed) {
      image(v_simulador_b5_p, 426, 406);
    }
  }
  */


  //Restablecer
  //normal
  image(v_simulador_b1_n, 728, 406+v_simulador_f1_ypos);
  //seleccionado
  if (mouseX > 728 && mouseX < 778 && mouseY > 406 && mouseY < 447 && a_f1==false && exit_sim==false) {
    image(v_simulador_b1_s, 728, 406);
    //presionado
    if (mousePressed) {
      image(v_simulador_b1_p, 728, 406);
    }
  }

  //Reproducir
  //normal
  image(v_simulador_b2_n, 778, 406+v_simulador_f1_ypos);
  //seleccionado
  if (mouseX > 778 && mouseX < 828 && mouseY > 406 && mouseY < 447 && a_f1==false && exit_sim==false) {
    image(v_simulador_b2_s, 778, 406);
    //presionado
    if (mousePressed) {
      image(v_simulador_b2_p, 778, 406);
    }
  }
  
  int altura_s;
  stroke(2);
      line(157,83,157,y2+138);
  image(cayendo, 138, y2+138);
  altura_s = altura / 220;
  if (fase_2 == false) {
    y = posicion(v, aceleracion, tiempo, yi );
    aceleracion = aceleracion(v, masa);
    v= velocidad(v, aceleracion, tiempo);
    y=y+138;
    yi=y;
  }
  if (y > cuerda) {
    fase_2 = true;
  }

  if (fase_2 == true) {
    amp=amplitud(frang, vi, yi);
    lnd = landa(amortiguamiento, masa);
    frang = w(elasticidad, masa); 
    phi=Math.acos(-yi/amp);
    y=amp*Math.exp(-lnd*tiempo)*Math.cos(frang*tiempo-phi);
    v=-1*frang*amp*Math.exp(-lnd*tiempo)*Math.sin(frang*tiempo-phi);
    v=v/10;
    y=y+138;
  }

/*  textAlign(LEFT, CENTER);
  fill(#999999);
  text(String.format("pos:    " + y), 450, 300);
  text(String.format("Vel:    " + v), 450, 320);
  text(String.format("Tiempo: " + tiempo), 450, 340);
  */
  if (tiempo<=50) {
    tiempo=tiempo+0.05;
    i++;
  }
  


  t2=(float)tiempo;
  y2=(float)y;
  v2=(float)v*10;
  amp2=(float)amp;
  m[0][i]=t2;
  m[1][i]=y2;
  m[2][i]=v2;
  

  for(int j=0;j<i;j++){
    noStroke();
    circle(422+m[0][j]*4,165+m[1][j]*amp2/300,2);
    circle(633+m[0][j]*4,229+m[2][j]*amp2/300,2);
    fill(0);
  }
  
}


//Movimiento Armonico Amortiguado

double landa(double b, double masa) {
  double l;
  l = b / (2 * masa);
  return l;
}


double w(double k, double masa) {//frecuencia angular
  double w;
  w = Math.sqrt(k / masa);
  return w;
}


double amplitud(double w, double v, double x) {  //amplitud del movimiento
  double a;
  a=Math.sqrt((v*v)/w+(x*x));
  return a;
}

// caída libre

double posicion(double v, double a, double t, double yi) {
  double y;
  y = v*t + (a*t*t)/2+yi;
  return y;
}


double velocidad(double v, double a, double t) {
  double vel;
  vel = v + a*t;
  vel=vel/10;
  return vel;
}


double aceleracion(double v, double m) {
  double a;
  a = 9.8 - (5.75*v*v) / m;
  return a;
}




//transicion menu principal-instrucciones
void transicion11() {
  if (pantallaAnterior==0) {
    gameScreen=8;
  } else {
    gameScreen=0;
  }
}
