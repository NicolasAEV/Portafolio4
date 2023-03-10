PGDMP     #                    {         
   portafolio    15.1    15.1 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24742 
   portafolio    DATABASE     ?   CREATE DATABASE portafolio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE portafolio;
                postgres    false            ?            1259    24837 	   categoria    TABLE     g   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre_categoria character varying(20)
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            ?            1259    24836    categoria_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categoria_id_seq;
       public          postgres    false    225            ?           0    0    categoria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;
          public          postgres    false    224            ?            1259    24789    cliente    TABLE       CREATE TABLE public.cliente (
    id integer NOT NULL,
    nombre_cliente character varying(100),
    fecha_nacimiento date,
    "contraseÑa" character varying(50),
    email character varying(100),
    rut character varying(13),
    id_direccion integer NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            ?            1259    24788    cliente_id_direccion_seq    SEQUENCE     ?   CREATE SEQUENCE public.cliente_id_direccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.cliente_id_direccion_seq;
       public          postgres    false    220            ?           0    0    cliente_id_direccion_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.cliente_id_direccion_seq OWNED BY public.cliente.id_direccion;
          public          postgres    false    219            ?            1259    24787    cliente_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cliente_id_seq;
       public          postgres    false    220            ?           0    0    cliente_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;
          public          postgres    false    218            ?            1259    24805 
   comentario    TABLE     ?   CREATE TABLE public.comentario (
    id integer NOT NULL,
    detalles character varying(100),
    puntaje integer,
    id_cliente integer NOT NULL
);
    DROP TABLE public.comentario;
       public         heap    postgres    false            ?            1259    24804    comentario_id_cliente_seq    SEQUENCE     ?   CREATE SEQUENCE public.comentario_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.comentario_id_cliente_seq;
       public          postgres    false    223            ?           0    0    comentario_id_cliente_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.comentario_id_cliente_seq OWNED BY public.comentario.id_cliente;
          public          postgres    false    222            ?            1259    24803    comentario_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.comentario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.comentario_id_seq;
       public          postgres    false    223            ?           0    0    comentario_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.comentario_id_seq OWNED BY public.comentario.id;
          public          postgres    false    221            ?            1259    24878    cupon    TABLE     {   CREATE TABLE public.cupon (
    id integer NOT NULL,
    cupon double precision,
    nombre_cupon character varying(20)
);
    DROP TABLE public.cupon;
       public         heap    postgres    false            ?            1259    24877    cupon_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.cupon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.cupon_id_seq;
       public          postgres    false    231            ?           0    0    cupon_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.cupon_id_seq OWNED BY public.cupon.id;
          public          postgres    false    230            ?            1259    25009 	   descuento    TABLE     ?   CREATE TABLE public.descuento (
    id integer NOT NULL,
    nombre character varying(100),
    por_descuento double precision
);
    DROP TABLE public.descuento;
       public         heap    postgres    false            ?            1259    25008    descuento_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.descuento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.descuento_id_seq;
       public          postgres    false    244            ?           0    0    descuento_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.descuento_id_seq OWNED BY public.descuento.id;
          public          postgres    false    243            ?            1259    24922    detalle_orden    TABLE     ?   CREATE TABLE public.detalle_orden (
    id integer NOT NULL,
    precio integer,
    cantidad integer,
    id_producto integer NOT NULL,
    id_orden integer NOT NULL
);
 !   DROP TABLE public.detalle_orden;
       public         heap    postgres    false            ?            1259    24921    detalle_orden_id_orden_seq    SEQUENCE     ?   CREATE SEQUENCE public.detalle_orden_id_orden_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.detalle_orden_id_orden_seq;
       public          postgres    false    242            ?           0    0    detalle_orden_id_orden_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.detalle_orden_id_orden_seq OWNED BY public.detalle_orden.id_orden;
          public          postgres    false    241            ?            1259    24920    detalle_orden_id_producto_seq    SEQUENCE     ?   CREATE SEQUENCE public.detalle_orden_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.detalle_orden_id_producto_seq;
       public          postgres    false    242            ?           0    0    detalle_orden_id_producto_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.detalle_orden_id_producto_seq OWNED BY public.detalle_orden.id_producto;
          public          postgres    false    240            ?            1259    24919    detalle_orden_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.detalle_orden_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.detalle_orden_id_seq;
       public          postgres    false    242            ?           0    0    detalle_orden_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.detalle_orden_id_seq OWNED BY public.detalle_orden.id;
          public          postgres    false    239            ?            1259    24781 	   direccion    TABLE     ?   CREATE TABLE public.direccion (
    id integer NOT NULL,
    region character varying(50),
    ciudad character varying(50),
    calle character varying(100)
);
    DROP TABLE public.direccion;
       public         heap    postgres    false            ?            1259    24780    direccion_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.direccion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.direccion_id_seq;
       public          postgres    false    217            ?           0    0    direccion_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.direccion_id_seq OWNED BY public.direccion.id;
          public          postgres    false    216            ?            1259    24885    estado_orden    TABLE     `   CREATE TABLE public.estado_orden (
    id integer NOT NULL,
    nombre character varying(15)
);
     DROP TABLE public.estado_orden;
       public         heap    postgres    false            ?            1259    24884    estado_orden_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.estado_orden_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.estado_orden_id_seq;
       public          postgres    false    233            ?           0    0    estado_orden_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.estado_orden_id_seq OWNED BY public.estado_orden.id;
          public          postgres    false    232            ?            1259    24895    orden    TABLE     ?   CREATE TABLE public.orden (
    id integer NOT NULL,
    fecha_orden date,
    tipo_boleta character varying(50),
    medio_pago character varying(50),
    id_estado integer NOT NULL,
    id_cliente integer NOT NULL,
    id_cupon integer
);
    DROP TABLE public.orden;
       public         heap    postgres    false            ?            1259    24893    orden_id_cliente_seq    SEQUENCE     ?   CREATE SEQUENCE public.orden_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.orden_id_cliente_seq;
       public          postgres    false    238            ?           0    0    orden_id_cliente_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.orden_id_cliente_seq OWNED BY public.orden.id_cliente;
          public          postgres    false    236            ?            1259    24894    orden_id_cupon_seq    SEQUENCE     ?   CREATE SEQUENCE public.orden_id_cupon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.orden_id_cupon_seq;
       public          postgres    false    238            ?           0    0    orden_id_cupon_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.orden_id_cupon_seq OWNED BY public.orden.id_cupon;
          public          postgres    false    237            ?            1259    24892    orden_id_estado_seq    SEQUENCE     ?   CREATE SEQUENCE public.orden_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.orden_id_estado_seq;
       public          postgres    false    238            ?           0    0    orden_id_estado_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.orden_id_estado_seq OWNED BY public.orden.id_estado;
          public          postgres    false    235            ?            1259    24891    orden_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.orden_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.orden_id_seq;
       public          postgres    false    238            ?           0    0    orden_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.orden_id_seq OWNED BY public.orden.id;
          public          postgres    false    234            ?            1259    24847    producto    TABLE     ?  CREATE TABLE public.producto (
    id integer NOT NULL,
    nombre_producto character varying(100),
    precio integer DEFAULT 0,
    stock integer DEFAULT 0,
    imagen character varying(200),
    descripcion character varying(200),
    fecha_creacion date,
    id_categoria integer NOT NULL,
    id_vendedor integer NOT NULL,
    id_descuento integer,
    id_comentario integer,
    CONSTRAINT producto_precio_check CHECK ((precio >= 0)),
    CONSTRAINT producto_stock_check CHECK ((stock >= 0))
);
    DROP TABLE public.producto;
       public         heap    postgres    false            ?            1259    24844    producto_id_categoria_seq    SEQUENCE     ?   CREATE SEQUENCE public.producto_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.producto_id_categoria_seq;
       public          postgres    false    229            ?           0    0    producto_id_categoria_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.producto_id_categoria_seq OWNED BY public.producto.id_categoria;
          public          postgres    false    227            ?            1259    25028    producto_id_comentario_seq    SEQUENCE     ?   CREATE SEQUENCE public.producto_id_comentario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.producto_id_comentario_seq;
       public          postgres    false    229            ?           0    0    producto_id_comentario_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.producto_id_comentario_seq OWNED BY public.producto.id_comentario;
          public          postgres    false    246            ?            1259    25015    producto_id_descuento_seq    SEQUENCE     ?   CREATE SEQUENCE public.producto_id_descuento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.producto_id_descuento_seq;
       public          postgres    false    229            ?           0    0    producto_id_descuento_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.producto_id_descuento_seq OWNED BY public.producto.id_descuento;
          public          postgres    false    245            ?            1259    24843    producto_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.producto_id_seq;
       public          postgres    false    229            ?           0    0    producto_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.producto_id_seq OWNED BY public.producto.id;
          public          postgres    false    226            ?            1259    24846    producto_id_vendedor_seq    SEQUENCE     ?   CREATE SEQUENCE public.producto_id_vendedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.producto_id_vendedor_seq;
       public          postgres    false    229            ?           0    0    producto_id_vendedor_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.producto_id_vendedor_seq OWNED BY public.producto.id_vendedor;
          public          postgres    false    228            ?            1259    24752    vendedor    TABLE     ?   CREATE TABLE public.vendedor (
    id integer NOT NULL,
    nombre_vendedor character varying(100),
    "contraseÑa" character varying(100),
    rut character varying(13)
);
    DROP TABLE public.vendedor;
       public         heap    postgres    false            ?            1259    24750    vendedor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.vendedor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vendedor_id_seq;
       public          postgres    false    215            ?           0    0    vendedor_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vendedor_id_seq OWNED BY public.vendedor.id;
          public          postgres    false    214            ?           2604    24840    categoria id    DEFAULT     l   ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);
 ;   ALTER TABLE public.categoria ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            ?           2604    24792 
   cliente id    DEFAULT     h   ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);
 9   ALTER TABLE public.cliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    218    220            ?           2604    24793    cliente id_direccion    DEFAULT     |   ALTER TABLE ONLY public.cliente ALTER COLUMN id_direccion SET DEFAULT nextval('public.cliente_id_direccion_seq'::regclass);
 C   ALTER TABLE public.cliente ALTER COLUMN id_direccion DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    24808    comentario id    DEFAULT     n   ALTER TABLE ONLY public.comentario ALTER COLUMN id SET DEFAULT nextval('public.comentario_id_seq'::regclass);
 <   ALTER TABLE public.comentario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    223    223            ?           2604    24809    comentario id_cliente    DEFAULT     ~   ALTER TABLE ONLY public.comentario ALTER COLUMN id_cliente SET DEFAULT nextval('public.comentario_id_cliente_seq'::regclass);
 D   ALTER TABLE public.comentario ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    223    222    223            ?           2604    24881    cupon id    DEFAULT     d   ALTER TABLE ONLY public.cupon ALTER COLUMN id SET DEFAULT nextval('public.cupon_id_seq'::regclass);
 7   ALTER TABLE public.cupon ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            ?           2604    25012    descuento id    DEFAULT     l   ALTER TABLE ONLY public.descuento ALTER COLUMN id SET DEFAULT nextval('public.descuento_id_seq'::regclass);
 ;   ALTER TABLE public.descuento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            ?           2604    24925    detalle_orden id    DEFAULT     t   ALTER TABLE ONLY public.detalle_orden ALTER COLUMN id SET DEFAULT nextval('public.detalle_orden_id_seq'::regclass);
 ?   ALTER TABLE public.detalle_orden ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    242    242            ?           2604    24926    detalle_orden id_producto    DEFAULT     ?   ALTER TABLE ONLY public.detalle_orden ALTER COLUMN id_producto SET DEFAULT nextval('public.detalle_orden_id_producto_seq'::regclass);
 H   ALTER TABLE public.detalle_orden ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    242    240    242            ?           2604    24927    detalle_orden id_orden    DEFAULT     ?   ALTER TABLE ONLY public.detalle_orden ALTER COLUMN id_orden SET DEFAULT nextval('public.detalle_orden_id_orden_seq'::regclass);
 E   ALTER TABLE public.detalle_orden ALTER COLUMN id_orden DROP DEFAULT;
       public          postgres    false    242    241    242            ?           2604    24784    direccion id    DEFAULT     l   ALTER TABLE ONLY public.direccion ALTER COLUMN id SET DEFAULT nextval('public.direccion_id_seq'::regclass);
 ;   ALTER TABLE public.direccion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            ?           2604    24888    estado_orden id    DEFAULT     r   ALTER TABLE ONLY public.estado_orden ALTER COLUMN id SET DEFAULT nextval('public.estado_orden_id_seq'::regclass);
 >   ALTER TABLE public.estado_orden ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            ?           2604    24898    orden id    DEFAULT     d   ALTER TABLE ONLY public.orden ALTER COLUMN id SET DEFAULT nextval('public.orden_id_seq'::regclass);
 7   ALTER TABLE public.orden ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    234    238            ?           2604    24899    orden id_estado    DEFAULT     r   ALTER TABLE ONLY public.orden ALTER COLUMN id_estado SET DEFAULT nextval('public.orden_id_estado_seq'::regclass);
 >   ALTER TABLE public.orden ALTER COLUMN id_estado DROP DEFAULT;
       public          postgres    false    238    235    238            ?           2604    24900    orden id_cliente    DEFAULT     t   ALTER TABLE ONLY public.orden ALTER COLUMN id_cliente SET DEFAULT nextval('public.orden_id_cliente_seq'::regclass);
 ?   ALTER TABLE public.orden ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    238    236    238            ?           2604    24901    orden id_cupon    DEFAULT     p   ALTER TABLE ONLY public.orden ALTER COLUMN id_cupon SET DEFAULT nextval('public.orden_id_cupon_seq'::regclass);
 =   ALTER TABLE public.orden ALTER COLUMN id_cupon DROP DEFAULT;
       public          postgres    false    238    237    238            ?           2604    24850    producto id    DEFAULT     j   ALTER TABLE ONLY public.producto ALTER COLUMN id SET DEFAULT nextval('public.producto_id_seq'::regclass);
 :   ALTER TABLE public.producto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    226    229            ?           2604    24853    producto id_categoria    DEFAULT     ~   ALTER TABLE ONLY public.producto ALTER COLUMN id_categoria SET DEFAULT nextval('public.producto_id_categoria_seq'::regclass);
 D   ALTER TABLE public.producto ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    229    227    229            ?           2604    24855    producto id_vendedor    DEFAULT     |   ALTER TABLE ONLY public.producto ALTER COLUMN id_vendedor SET DEFAULT nextval('public.producto_id_vendedor_seq'::regclass);
 C   ALTER TABLE public.producto ALTER COLUMN id_vendedor DROP DEFAULT;
       public          postgres    false    228    229    229            ?           2604    25016    producto id_descuento    DEFAULT     ~   ALTER TABLE ONLY public.producto ALTER COLUMN id_descuento SET DEFAULT nextval('public.producto_id_descuento_seq'::regclass);
 D   ALTER TABLE public.producto ALTER COLUMN id_descuento DROP DEFAULT;
       public          postgres    false    245    229            ?           2604    25029    producto id_comentario    DEFAULT     ?   ALTER TABLE ONLY public.producto ALTER COLUMN id_comentario SET DEFAULT nextval('public.producto_id_comentario_seq'::regclass);
 E   ALTER TABLE public.producto ALTER COLUMN id_comentario DROP DEFAULT;
       public          postgres    false    246    229            ?           2604    24755    vendedor id    DEFAULT     j   ALTER TABLE ONLY public.vendedor ALTER COLUMN id SET DEFAULT nextval('public.vendedor_id_seq'::regclass);
 :   ALTER TABLE public.vendedor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            y          0    24837 	   categoria 
   TABLE DATA           9   COPY public.categoria (id, nombre_categoria) FROM stdin;
    public          postgres    false    225   ̛       t          0    24789    cliente 
   TABLE DATA           p   COPY public.cliente (id, nombre_cliente, fecha_nacimiento, "contraseÑa", email, rut, id_direccion) FROM stdin;
    public          postgres    false    220   ?       w          0    24805 
   comentario 
   TABLE DATA           G   COPY public.comentario (id, detalles, puntaje, id_cliente) FROM stdin;
    public          postgres    false    223   ??                 0    24878    cupon 
   TABLE DATA           8   COPY public.cupon (id, cupon, nombre_cupon) FROM stdin;
    public          postgres    false    231   ޜ       ?          0    25009 	   descuento 
   TABLE DATA           >   COPY public.descuento (id, nombre, por_descuento) FROM stdin;
    public          postgres    false    244   	?       ?          0    24922    detalle_orden 
   TABLE DATA           T   COPY public.detalle_orden (id, precio, cantidad, id_producto, id_orden) FROM stdin;
    public          postgres    false    242   3?       q          0    24781 	   direccion 
   TABLE DATA           >   COPY public.direccion (id, region, ciudad, calle) FROM stdin;
    public          postgres    false    217   ??       ?          0    24885    estado_orden 
   TABLE DATA           2   COPY public.estado_orden (id, nombre) FROM stdin;
    public          postgres    false    233   ??       ?          0    24895    orden 
   TABLE DATA           j   COPY public.orden (id, fecha_orden, tipo_boleta, medio_pago, id_estado, id_cliente, id_cupon) FROM stdin;
    public          postgres    false    238   8?       }          0    24847    producto 
   TABLE DATA           ?   COPY public.producto (id, nombre_producto, precio, stock, imagen, descripcion, fecha_creacion, id_categoria, id_vendedor, id_descuento, id_comentario) FROM stdin;
    public          postgres    false    229   ??       o          0    24752    vendedor 
   TABLE DATA           K   COPY public.vendedor (id, nombre_vendedor, "contraseÑa", rut) FROM stdin;
    public          postgres    false    215   ?       ?           0    0    categoria_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categoria_id_seq', 1, false);
          public          postgres    false    224            ?           0    0    cliente_id_direccion_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.cliente_id_direccion_seq', 1, false);
          public          postgres    false    219            ?           0    0    cliente_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cliente_id_seq', 1, false);
          public          postgres    false    218            ?           0    0    comentario_id_cliente_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.comentario_id_cliente_seq', 1, false);
          public          postgres    false    222            ?           0    0    comentario_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.comentario_id_seq', 1, false);
          public          postgres    false    221            ?           0    0    cupon_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cupon_id_seq', 1, false);
          public          postgres    false    230            ?           0    0    descuento_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.descuento_id_seq', 1, false);
          public          postgres    false    243            ?           0    0    detalle_orden_id_orden_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.detalle_orden_id_orden_seq', 1, false);
          public          postgres    false    241            ?           0    0    detalle_orden_id_producto_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.detalle_orden_id_producto_seq', 1, false);
          public          postgres    false    240            ?           0    0    detalle_orden_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.detalle_orden_id_seq', 1, false);
          public          postgres    false    239            ?           0    0    direccion_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.direccion_id_seq', 1, false);
          public          postgres    false    216            ?           0    0    estado_orden_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.estado_orden_id_seq', 1, false);
          public          postgres    false    232            ?           0    0    orden_id_cliente_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.orden_id_cliente_seq', 1, false);
          public          postgres    false    236            ?           0    0    orden_id_cupon_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.orden_id_cupon_seq', 1, false);
          public          postgres    false    237            ?           0    0    orden_id_estado_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orden_id_estado_seq', 1, false);
          public          postgres    false    235            ?           0    0    orden_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orden_id_seq', 1, false);
          public          postgres    false    234            ?           0    0    producto_id_categoria_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.producto_id_categoria_seq', 1, false);
          public          postgres    false    227            ?           0    0    producto_id_comentario_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.producto_id_comentario_seq', 2, true);
          public          postgres    false    246            ?           0    0    producto_id_descuento_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.producto_id_descuento_seq', 1, false);
          public          postgres    false    245            ?           0    0    producto_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.producto_id_seq', 1, false);
          public          postgres    false    226            ?           0    0    producto_id_vendedor_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.producto_id_vendedor_seq', 1, false);
          public          postgres    false    228            ?           0    0    vendedor_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.vendedor_id_seq', 1, false);
          public          postgres    false    214            ?           2606    24842    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    225            ?           2606    24795    cliente cliente_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    220            ?           2606    24797    cliente cliente_rut_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_rut_key UNIQUE (rut);
 A   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_rut_key;
       public            postgres    false    220            ?           2606    24811    comentario comentario_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.comentario DROP CONSTRAINT comentario_pkey;
       public            postgres    false    223            ?           2606    24883    cupon cupon_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.cupon
    ADD CONSTRAINT cupon_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.cupon DROP CONSTRAINT cupon_pkey;
       public            postgres    false    231            ?           2606    25014    descuento descuento_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.descuento
    ADD CONSTRAINT descuento_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.descuento DROP CONSTRAINT descuento_pkey;
       public            postgres    false    244            ?           2606    24929     detalle_orden detalle_orden_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.detalle_orden
    ADD CONSTRAINT detalle_orden_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.detalle_orden DROP CONSTRAINT detalle_orden_pkey;
       public            postgres    false    242            ?           2606    24786    direccion direccion_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.direccion
    ADD CONSTRAINT direccion_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.direccion DROP CONSTRAINT direccion_pkey;
       public            postgres    false    217            ?           2606    24890    estado_orden estado_orden_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.estado_orden
    ADD CONSTRAINT estado_orden_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.estado_orden DROP CONSTRAINT estado_orden_pkey;
       public            postgres    false    233            ?           2606    24903    orden orden_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT orden_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.orden DROP CONSTRAINT orden_pkey;
       public            postgres    false    238            ?           2606    24861    producto producto_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    229            ?           2606    24758    vendedor vendedor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vendedor DROP CONSTRAINT vendedor_pkey;
       public            postgres    false    215            ?           2606    24760    vendedor vendedor_rut_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_rut_key UNIQUE (rut);
 C   ALTER TABLE ONLY public.vendedor DROP CONSTRAINT vendedor_rut_key;
       public            postgres    false    215            ?           2606    24798 !   cliente cliente_id_direccion_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_id_direccion_fkey FOREIGN KEY (id_direccion) REFERENCES public.direccion(id);
 K   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_id_direccion_fkey;
       public          postgres    false    220    3265    217            ?           2606    24812 %   comentario comentario_id_cliente_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);
 O   ALTER TABLE ONLY public.comentario DROP CONSTRAINT comentario_id_cliente_fkey;
       public          postgres    false    223    220    3267            ?           2606    24935 )   detalle_orden detalle_orden_id_orden_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detalle_orden
    ADD CONSTRAINT detalle_orden_id_orden_fkey FOREIGN KEY (id_orden) REFERENCES public.orden(id);
 S   ALTER TABLE ONLY public.detalle_orden DROP CONSTRAINT detalle_orden_id_orden_fkey;
       public          postgres    false    238    242    3281            ?           2606    24930 ,   detalle_orden detalle_orden_id_producto_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detalle_orden
    ADD CONSTRAINT detalle_orden_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id);
 V   ALTER TABLE ONLY public.detalle_orden DROP CONSTRAINT detalle_orden_id_producto_fkey;
       public          postgres    false    242    3275    229            ?           2606    25023    producto id_descuento    FK CONSTRAINT     }   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT id_descuento FOREIGN KEY (id_descuento) REFERENCES public.descuento(id);
 ?   ALTER TABLE ONLY public.producto DROP CONSTRAINT id_descuento;
       public          postgres    false    244    3285    229            ?           2606    24909    orden orden_id_cliente_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.orden
    ADD CONSTRAINT orden_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);
 E   ALTER TABLE ONLY public.orden DROP CONSTRAINT orden_id_cliente_fkey;
       public          postgres    false    238    3267    220            ?           2606    24914    orden orden_id_cupon_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT orden_id_cupon_fkey FOREIGN KEY (id_cupon) REFERENCES public.cupon(id);
 C   ALTER TABLE ONLY public.orden DROP CONSTRAINT orden_id_cupon_fkey;
       public          postgres    false    231    238    3277            ?           2606    24904    orden orden_id_estado_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orden
    ADD CONSTRAINT orden_id_estado_fkey FOREIGN KEY (id_estado) REFERENCES public.estado_orden(id);
 D   ALTER TABLE ONLY public.orden DROP CONSTRAINT orden_id_estado_fkey;
       public          postgres    false    3279    233    238            ?           2606    24862 #   producto producto_id_categoria_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categoria(id);
 M   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_id_categoria_fkey;
       public          postgres    false    3273    225    229            ?           2606    24872 "   producto producto_id_vendedor_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_id_vendedor_fkey FOREIGN KEY (id_vendedor) REFERENCES public.vendedor(id);
 L   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_id_vendedor_fkey;
       public          postgres    false    215    229    3261            y   A   x?3?ts?	r?2????2?turM8}C?=??L9]\??B\??8??=???b???? ???      t   ?   x????
?0Dϛ???&??+"??S??Gc???C??3?Y?:???????(?????ܦ?E?- 8a???Ҹ쮲??֭?ؒ5Ja????n??*?*P?\3????p????^?N?
???/??YT??9?e/??y?%Ƙ7??@?      w      x?????? ? ?            x?3?4???Sp???????? '?      ?      x?3?sr???4?3?????? $9R      ?   ^   x?M???0C?x??&??]??u"????/ ?o=U??Hu??R?N?R?zr?D?J??a?_??lZ?)w?
?i?? ???????????{?      q   J   x?3?tqtv?u?s??q?s?t?u?s?W?v?Qp??u??2??s?	?WpJ8??q??q??qqq ???      ?   -   x?3?p?s?t?q?2?ttvqtq?2?tst	?c???? ???      ?   ?   x???K
? ???x?<4i???v???????VK????30?h$?????:S?q?/?@@??fX?!:?0??Vįa,?5?q?k4~V?[??9?,X#?9?&sy?T1ղ&?"lc[Ɇ????&???Q?l??P~?E?2?'???Q??R?	`?      }      x????n? E?ǯ?h#?[?8+?R6?n???Ga??&[???{?^@!P?6`???dF2?@?ʲ???i`#?l??	W=i;?RʗR??*$??'L7??΢?Ù?ˬ????ʢ6?-?$????Qi޻?lQÅ?	S??????P?Y?y&P=?<^?<S??{?l???	.n??Y?0?'?ڟ?B???y????(@?natC?b@?u? 댷???AQ1DOV??+???|?)]?~?["???s_?3??(?ߚ?O?_O	g???&?w?:T???(?o?뜫      o   `   x?=?9?@ ????-???"?HH@?i??wPXK1?|?ǾeQ??@?????s??(U?B?????83?B??lK??{?;{!ǀ#?c"8
???c?A     