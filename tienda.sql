PGDMP     )    '                {           tienda    15.1    15.1 Y    k           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            l           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            m           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            n           1262    42870    tienda    DATABASE     �   CREATE DATABASE tienda WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Latin America.1252';
    DROP DATABASE tienda;
                postgres    false            �            1259    42897    carritos    TABLE     \   CREATE TABLE public.carritos (
    id integer NOT NULL,
    usuarios_id integer NOT NULL
);
    DROP TABLE public.carritos;
       public         heap    postgres    false            �            1259    42896    carritos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carritos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.carritos_id_seq;
       public          postgres    false    219            o           0    0    carritos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.carritos_id_seq OWNED BY public.carritos.id;
          public          postgres    false    218            �            1259    42909    carro_productos    TABLE     �   CREATE TABLE public.carro_productos (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    carrito_id integer NOT NULL,
    producto_id integer NOT NULL,
    CONSTRAINT carro_productos_cantidad_check CHECK ((cantidad >= 0))
);
 #   DROP TABLE public.carro_productos;
       public         heap    postgres    false            �            1259    42908    carro_productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carro_productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.carro_productos_id_seq;
       public          postgres    false    221            p           0    0    carro_productos_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.carro_productos_id_seq OWNED BY public.carro_productos.id;
          public          postgres    false    220            �            1259    42967    carros    TABLE     Q   CREATE TABLE public.carros (
    id integer NOT NULL,
    "usuarioId" integer
);
    DROP TABLE public.carros;
       public         heap    postgres    false            �            1259    42966    carros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.carros_id_seq;
       public          postgres    false    229            q           0    0    carros_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.carros_id_seq OWNED BY public.carros.id;
          public          postgres    false    228            �            1259    42879 
   categorias    TABLE     g   CREATE TABLE public.categorias (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    42878    categorias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categorias_id_seq;
       public          postgres    false    217            r           0    0    categorias_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;
          public          postgres    false    216            �            1259    43019    detalle_carros    TABLE     �   CREATE TABLE public.detalle_carros (
    id integer NOT NULL,
    amount integer NOT NULL,
    "carroId" integer,
    "productoId" integer
);
 "   DROP TABLE public.detalle_carros;
       public         heap    postgres    false            �            1259    43018    detalle_carros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_carros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.detalle_carros_id_seq;
       public          postgres    false    237            s           0    0    detalle_carros_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.detalle_carros_id_seq OWNED BY public.detalle_carros.id;
          public          postgres    false    236            �            1259    43000    detalle_venta    TABLE     �   CREATE TABLE public.detalle_venta (
    id integer NOT NULL,
    amount integer NOT NULL,
    value numeric NOT NULL,
    "ventumId" integer,
    "productoId" integer
);
 !   DROP TABLE public.detalle_venta;
       public         heap    postgres    false            �            1259    42999    detalle_venta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_venta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.detalle_venta_id_seq;
       public          postgres    false    235            t           0    0    detalle_venta_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.detalle_venta_id_seq OWNED BY public.detalle_venta.id;
          public          postgres    false    234            �            1259    42939    detalle_ventas    TABLE     P  CREATE TABLE public.detalle_ventas (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    precio numeric NOT NULL,
    venta_id integer NOT NULL,
    producto_id integer NOT NULL,
    CONSTRAINT detalle_ventas_cantidad_check CHECK ((cantidad >= 0)),
    CONSTRAINT detalle_ventas_precio_check CHECK ((precio >= (0)::numeric))
);
 "   DROP TABLE public.detalle_ventas;
       public         heap    postgres    false            �            1259    42938    detalle_ventas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_ventas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.detalle_ventas_id_seq;
       public          postgres    false    225            u           0    0    detalle_ventas_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.detalle_ventas_id_seq OWNED BY public.detalle_ventas.id;
          public          postgres    false    224            �            1259    42991 	   productos    TABLE     �  CREATE TABLE public.productos (
    id integer NOT NULL,
    sku character varying(50) NOT NULL,
    "nameProduct" character varying(100) NOT NULL,
    description character varying(500) NOT NULL,
    image character varying(100) NOT NULL,
    det1 character varying(100),
    det2 character varying(100),
    det3 character varying(100),
    value numeric NOT NULL,
    discount numeric NOT NULL,
    stock integer NOT NULL
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    42990    productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public          postgres    false    233            v           0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public          postgres    false    232            �            1259    42960    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(100) NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    42959    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    227            w           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    226            �            1259    42979    venta    TABLE     �   CREATE TABLE public.venta (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    "totalValue" integer,
    "usuarioId" integer
);
    DROP TABLE public.venta;
       public         heap    postgres    false            �            1259    42978    venta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.venta_id_seq;
       public          postgres    false    231            x           0    0    venta_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.venta_id_seq OWNED BY public.venta.id;
          public          postgres    false    230            �            1259    42927    ventas    TABLE     j   CREATE TABLE public.ventas (
    id integer NOT NULL,
    fecha date,
    usuarios_id integer NOT NULL
);
    DROP TABLE public.ventas;
       public         heap    postgres    false            �            1259    42926    ventas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ventas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ventas_id_seq;
       public          postgres    false    223            y           0    0    ventas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ventas_id_seq OWNED BY public.ventas.id;
          public          postgres    false    222            �           2604    42900    carritos id    DEFAULT     j   ALTER TABLE ONLY public.carritos ALTER COLUMN id SET DEFAULT nextval('public.carritos_id_seq'::regclass);
 :   ALTER TABLE public.carritos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    42912    carro_productos id    DEFAULT     x   ALTER TABLE ONLY public.carro_productos ALTER COLUMN id SET DEFAULT nextval('public.carro_productos_id_seq'::regclass);
 A   ALTER TABLE public.carro_productos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    42970 	   carros id    DEFAULT     f   ALTER TABLE ONLY public.carros ALTER COLUMN id SET DEFAULT nextval('public.carros_id_seq'::regclass);
 8   ALTER TABLE public.carros ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    42882    categorias id    DEFAULT     n   ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);
 <   ALTER TABLE public.categorias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    43022    detalle_carros id    DEFAULT     v   ALTER TABLE ONLY public.detalle_carros ALTER COLUMN id SET DEFAULT nextval('public.detalle_carros_id_seq'::regclass);
 @   ALTER TABLE public.detalle_carros ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    43003    detalle_venta id    DEFAULT     t   ALTER TABLE ONLY public.detalle_venta ALTER COLUMN id SET DEFAULT nextval('public.detalle_venta_id_seq'::regclass);
 ?   ALTER TABLE public.detalle_venta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    42942    detalle_ventas id    DEFAULT     v   ALTER TABLE ONLY public.detalle_ventas ALTER COLUMN id SET DEFAULT nextval('public.detalle_ventas_id_seq'::regclass);
 @   ALTER TABLE public.detalle_ventas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    42994    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    42963    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    42982    venta id    DEFAULT     d   ALTER TABLE ONLY public.venta ALTER COLUMN id SET DEFAULT nextval('public.venta_id_seq'::regclass);
 7   ALTER TABLE public.venta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    42930 	   ventas id    DEFAULT     f   ALTER TABLE ONLY public.ventas ALTER COLUMN id SET DEFAULT nextval('public.ventas_id_seq'::regclass);
 8   ALTER TABLE public.ventas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            V          0    42897    carritos 
   TABLE DATA           3   COPY public.carritos (id, usuarios_id) FROM stdin;
    public          postgres    false    219   �e       X          0    42909    carro_productos 
   TABLE DATA           P   COPY public.carro_productos (id, cantidad, carrito_id, producto_id) FROM stdin;
    public          postgres    false    221   �e       `          0    42967    carros 
   TABLE DATA           1   COPY public.carros (id, "usuarioId") FROM stdin;
    public          postgres    false    229    f       T          0    42879 
   categorias 
   TABLE DATA           0   COPY public.categorias (id, nombre) FROM stdin;
    public          postgres    false    217   f       h          0    43019    detalle_carros 
   TABLE DATA           M   COPY public.detalle_carros (id, amount, "carroId", "productoId") FROM stdin;
    public          postgres    false    237   :f       f          0    43000    detalle_venta 
   TABLE DATA           T   COPY public.detalle_venta (id, amount, value, "ventumId", "productoId") FROM stdin;
    public          postgres    false    235   Wf       \          0    42939    detalle_ventas 
   TABLE DATA           U   COPY public.detalle_ventas (id, cantidad, precio, venta_id, producto_id) FROM stdin;
    public          postgres    false    225   �f       d          0    42991 	   productos 
   TABLE DATA           y   COPY public.productos (id, sku, "nameProduct", description, image, det1, det2, det3, value, discount, stock) FROM stdin;
    public          postgres    false    233   �f       ^          0    42960    usuarios 
   TABLE DATA           =   COPY public.usuarios (id, name, email, password) FROM stdin;
    public          postgres    false    227   [i       b          0    42979    venta 
   TABLE DATA           D   COPY public.venta (id, date, "totalValue", "usuarioId") FROM stdin;
    public          postgres    false    231   �i       Z          0    42927    ventas 
   TABLE DATA           8   COPY public.ventas (id, fecha, usuarios_id) FROM stdin;
    public          postgres    false    223   �i       z           0    0    carritos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.carritos_id_seq', 1, false);
          public          postgres    false    218            {           0    0    carro_productos_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.carro_productos_id_seq', 1, false);
          public          postgres    false    220            |           0    0    carros_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carros_id_seq', 1, true);
          public          postgres    false    228            }           0    0    categorias_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categorias_id_seq', 1, false);
          public          postgres    false    216            ~           0    0    detalle_carros_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.detalle_carros_id_seq', 2, true);
          public          postgres    false    236                       0    0    detalle_venta_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.detalle_venta_id_seq', 2, true);
          public          postgres    false    234            �           0    0    detalle_ventas_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.detalle_ventas_id_seq', 1, false);
          public          postgres    false    224            �           0    0    productos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.productos_id_seq', 12, true);
          public          postgres    false    232            �           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 3, true);
          public          postgres    false    226            �           0    0    venta_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.venta_id_seq', 1, true);
          public          postgres    false    230            �           0    0    ventas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ventas_id_seq', 1, false);
          public          postgres    false    222            �           2606    42902    carritos carritos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.carritos
    ADD CONSTRAINT carritos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.carritos DROP CONSTRAINT carritos_pkey;
       public            postgres    false    219            �           2606    42915 $   carro_productos carro_productos_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.carro_productos
    ADD CONSTRAINT carro_productos_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.carro_productos DROP CONSTRAINT carro_productos_pkey;
       public            postgres    false    221            �           2606    42972    carros carros_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.carros
    ADD CONSTRAINT carros_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.carros DROP CONSTRAINT carros_pkey;
       public            postgres    false    229            �           2606    42884    categorias categorias_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    217            �           2606    43024 "   detalle_carros detalle_carros_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.detalle_carros
    ADD CONSTRAINT detalle_carros_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.detalle_carros DROP CONSTRAINT detalle_carros_pkey;
       public            postgres    false    237            �           2606    43007     detalle_venta detalle_venta_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT detalle_venta_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.detalle_venta DROP CONSTRAINT detalle_venta_pkey;
       public            postgres    false    235            �           2606    42948 "   detalle_ventas detalle_ventas_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT detalle_ventas_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.detalle_ventas DROP CONSTRAINT detalle_ventas_pkey;
       public            postgres    false    225            �           2606    42998    productos productos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    233            �           2606    42965    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    227            �           2606    42984    venta venta_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
       public            postgres    false    231            �           2606    42932    ventas ventas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventas_pkey;
       public            postgres    false    223            �           2606    42916 /   carro_productos carro_productos_carrito_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.carro_productos
    ADD CONSTRAINT carro_productos_carrito_id_fkey FOREIGN KEY (carrito_id) REFERENCES public.carritos(id);
 Y   ALTER TABLE ONLY public.carro_productos DROP CONSTRAINT carro_productos_carrito_id_fkey;
       public          postgres    false    3242    219    221            �           2606    42973    carros carros_usuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.carros
    ADD CONSTRAINT "carros_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.carros DROP CONSTRAINT "carros_usuarioId_fkey";
       public          postgres    false    227    3250    229            �           2606    43025 *   detalle_carros detalle_carros_carroId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_carros
    ADD CONSTRAINT "detalle_carros_carroId_fkey" FOREIGN KEY ("carroId") REFERENCES public.carros(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.detalle_carros DROP CONSTRAINT "detalle_carros_carroId_fkey";
       public          postgres    false    229    3252    237            �           2606    43030 -   detalle_carros detalle_carros_productoId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_carros
    ADD CONSTRAINT "detalle_carros_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES public.productos(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public.detalle_carros DROP CONSTRAINT "detalle_carros_productoId_fkey";
       public          postgres    false    233    3256    237            �           2606    43013 +   detalle_venta detalle_venta_productoId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT "detalle_venta_productoId_fkey" FOREIGN KEY ("productoId") REFERENCES public.productos(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public.detalle_venta DROP CONSTRAINT "detalle_venta_productoId_fkey";
       public          postgres    false    235    233    3256            �           2606    43008 )   detalle_venta detalle_venta_ventumId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT "detalle_venta_ventumId_fkey" FOREIGN KEY ("ventumId") REFERENCES public.venta(id) ON UPDATE CASCADE ON DELETE SET NULL;
 U   ALTER TABLE ONLY public.detalle_venta DROP CONSTRAINT "detalle_venta_ventumId_fkey";
       public          postgres    false    231    3254    235            �           2606    42949 +   detalle_ventas detalle_ventas_venta_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT detalle_ventas_venta_id_fkey FOREIGN KEY (venta_id) REFERENCES public.ventas(id);
 U   ALTER TABLE ONLY public.detalle_ventas DROP CONSTRAINT detalle_ventas_venta_id_fkey;
       public          postgres    false    223    225    3246            �           2606    42985    venta venta_usuarioId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT "venta_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES public.usuarios(id) ON UPDATE CASCADE ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.venta DROP CONSTRAINT "venta_usuarioId_fkey";
       public          postgres    false    231    3250    227            V      x������ � �      X      x������ � �      `      x������ � �      T      x������ � �      h      x������ � �      f   !   x�3�4�4410 RF\F@��̱������ D5&      \      x������ � �      d   �  x���Mn�0���)x� %K��K� E�v�M7��4��ТJR-�[��XgHɉ�( �49~|�8J(�gqm��K?�0����Ks�{�F�n0R���泺���A\�nG��B$:����1���7mu���xy ҡ�����f�*�T(��$jQ��XY܁lPj��x���!���]���u;s�J��4��D��%��i�FN���J"+��V�Lt2/R��O&f:���E4�}ϳ�q�5 [phH�Sq,4@c͊�TS�܈�ན��C���fP�୉�?`�DJ��#	"{�M���@��Q��,ʻ'R�:ֆRĹ��R������Ĕ�&K�s�rM5�@��"h	rM[i�>r,#�*D��kܙ�c�S;����4�'��Upv�v%�`��t��������D$�����ה�1^�Ֆ�;�,��'㗵(�>i�x��5V?�zء���Q���Qi<<Fٮe�#�i7���`\=�(��";6�(�a˾����g"Q�$�R����NTf�cC��� �L,�c?���1��0�	��N�OoAkn�����XÏ��x�*���d�U���:xXn���1%=�$�d��m�-��\|B.�p�S�J�D`��0t�l1��m�A#���u���=N�A��|�"�H�*�t�$�Ow�'�      ^   E   x�3�t�K)J-�LS���9z�����F�&�f\F�����%����%��Ɯ�E�Ŝ�%)r1z\\\ tDo      b   /   x�3�4202�50�5�T02�26�2��3� 	q�pr��qqq �      Z      x������ � �     