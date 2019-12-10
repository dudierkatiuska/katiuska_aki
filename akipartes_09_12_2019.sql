

--
-- TOC entry 196 (class 1259 OID 158388)
-- Name: tbl_access; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_access (
    acce_ide integer NOT NULL,
    acce_username character varying(255) NOT NULL,
    acce_password character varying(255) NOT NULL,
    acce_user integer NOT NULL,
    acce_status character(1) NOT NULL
);


--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 196
-- Name: TABLE tbl_access; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.tbl_access IS 'tabla de acceso';


--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN tbl_access.acce_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_access.acce_ide IS 'pk autoincremental del acceso del usuario';


--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN tbl_access.acce_username; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_access.acce_username IS 'username del usuario';


--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN tbl_access.acce_password; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_access.acce_password IS 'contraseña del usuario';


--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN tbl_access.acce_user; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_access.acce_user IS 'fk relación entre acceso y usuario';


--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 196
-- Name: COLUMN tbl_access.acce_status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_access.acce_status IS 'estatus del acceso del usuario (Activo / Inactivo)';


--
-- TOC entry 197 (class 1259 OID 158394)
-- Name: tbl_access_acce_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_access_acce_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 197
-- Name: tbl_access_acce_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_access_acce_ide_seq OWNED BY public.tbl_access.acce_ide;


--
-- TOC entry 198 (class 1259 OID 158396)
-- Name: tbl_access_acce_user_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_access_acce_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 198
-- Name: tbl_access_acce_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_access_acce_user_seq OWNED BY public.tbl_access.acce_user;


--
-- TOC entry 199 (class 1259 OID 158398)
-- Name: tbl_accesstypeuser; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_accesstypeuser (
    actu_ide integer NOT NULL,
    actu_acce integer NOT NULL,
    actu_usty integer NOT NULL
);


--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 199
-- Name: TABLE tbl_accesstypeuser; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.tbl_accesstypeuser IS 'tabla de relación  acceso con  el  tipo de usuario';


--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN tbl_accesstypeuser.actu_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_accesstypeuser.actu_ide IS 'pk autoincremental del acceso del tipo de usuario';


--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN tbl_accesstypeuser.actu_acce; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_accesstypeuser.actu_acce IS 'fk autoincremental del acceso';


--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 199
-- Name: COLUMN tbl_accesstypeuser.actu_usty; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_accesstypeuser.actu_usty IS ' fk autoincremental de tipo de usuario';


--
-- TOC entry 200 (class 1259 OID 158401)
-- Name: tbl_accesstypeuser_actu_acce_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_accesstypeuser_actu_acce_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 200
-- Name: tbl_accesstypeuser_actu_acce_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_accesstypeuser_actu_acce_seq OWNED BY public.tbl_accesstypeuser.actu_acce;


--
-- TOC entry 201 (class 1259 OID 158403)
-- Name: tbl_accesstypeuser_actu_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_accesstypeuser_actu_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 201
-- Name: tbl_accesstypeuser_actu_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_accesstypeuser_actu_ide_seq OWNED BY public.tbl_accesstypeuser.actu_ide;


--
-- TOC entry 202 (class 1259 OID 158405)
-- Name: tbl_accesstypeuser_actu_usty_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_accesstypeuser_actu_usty_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 202
-- Name: tbl_accesstypeuser_actu_usty_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_accesstypeuser_actu_usty_seq OWNED BY public.tbl_accesstypeuser.actu_usty;


--
-- TOC entry 203 (class 1259 OID 158407)
-- Name: tbl_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_category (
    cate_ide integer NOT NULL,
    cate_description character varying(255) NOT NULL,
    cate_status character(1) NOT NULL,
    cate_url character varying(255)
);


--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE tbl_category; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.tbl_category IS 'tabla de la categoría del influencer

';


--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN tbl_category.cate_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_category.cate_ide IS 'pk autoincremental de categoría';


--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN tbl_category.cate_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_category.cate_description IS 'descripción de la categoría';


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN tbl_category.cate_status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_category.cate_status IS 'estatus de la categoría(Activo / Inactivo)';


--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 203
-- Name: COLUMN tbl_category.cate_url; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_category.cate_url IS 'imagen destacada de la categoría';


--
-- TOC entry 204 (class 1259 OID 158413)
-- Name: tbl_category_cate_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_category_cate_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 204
-- Name: tbl_category_cate_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_category_cate_ide_seq OWNED BY public.tbl_category.cate_ide;


--
-- TOC entry 205 (class 1259 OID 158415)
-- Name: tbl_city; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_city (
    city_ide integer NOT NULL,
    city_description character varying(255),
    city_status character varying(255) NOT NULL
);


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN tbl_city.city_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_city.city_ide IS 'pk autoincremental de la ciudad';


--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN tbl_city.city_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_city.city_description IS 'descripcion de la ciudad';


--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 205
-- Name: COLUMN tbl_city.city_status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_city.city_status IS 'estatus de la ciudad (Activo / Inactivo)';


--
-- TOC entry 206 (class 1259 OID 158421)
-- Name: tbl_city_city_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_city_city_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 206
-- Name: tbl_city_city_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_city_city_ide_seq OWNED BY public.tbl_city.city_ide;


--
-- TOC entry 207 (class 1259 OID 158423)
-- Name: tbl_store; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_store (
    stor_ide integer NOT NULL,
    stor_name character varying(255),
    stor_url character varying(255),
    stor_typestore character varying(255),
    stor_userkey character varying(255),
    stor_secretkey character varying(255),
    stor_city character varying(255),
    stor_logo character varying(255),
    stor_status character(1)
);


--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN tbl_store.stor_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_store.stor_ide IS 'pk autoincremental de la tienda';


--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN tbl_store.stor_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_store.stor_name IS 'nombre de la tienda';


--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN tbl_store.stor_url; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_store.stor_url IS 'url de la tienda';


--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN tbl_store.stor_typestore; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_store.stor_typestore IS 'tipo de tienda';


--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN tbl_store.stor_userkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_store.stor_userkey IS 'clave del usuario';


--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN tbl_store.stor_secretkey; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_store.stor_secretkey IS 'clave secreta';


--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN tbl_store.stor_city; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_store.stor_city IS 'ciudad donde esta ubicada la tienda';


--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN tbl_store.stor_logo; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_store.stor_logo IS 'logo de la tienda';


--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 207
-- Name: COLUMN tbl_store.stor_status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_store.stor_status IS 'status de l tienda activo/inactivo';


--
-- TOC entry 208 (class 1259 OID 158429)
-- Name: tbl_client_clie_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_client_clie_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3048 (class 0 OID 0)
-- Dependencies: 208
-- Name: tbl_client_clie_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_client_clie_ide_seq OWNED BY public.tbl_store.stor_ide;


--
-- TOC entry 209 (class 1259 OID 158431)
-- Name: tbl_favoriteproduct; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_favoriteproduct (
    fapr_ide integer NOT NULL,
    fapr_user integer NOT NULL,
    fapr_product text NOT NULL,
    fapr_date timestamp(6) without time zone
);


--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN tbl_favoriteproduct.fapr_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_favoriteproduct.fapr_ide IS 'autoincremental de los productos favoritos';


--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN tbl_favoriteproduct.fapr_user; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_favoriteproduct.fapr_user IS 'fk autoincremental del usuario';


--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN tbl_favoriteproduct.fapr_product; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_favoriteproduct.fapr_product IS 'productos favoritos';


--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 209
-- Name: COLUMN tbl_favoriteproduct.fapr_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_favoriteproduct.fapr_date IS 'fecha';


--
-- TOC entry 210 (class 1259 OID 158437)
-- Name: tbl_favoriteproduct_fapr_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_favoriteproduct_fapr_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 210
-- Name: tbl_favoriteproduct_fapr_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_favoriteproduct_fapr_ide_seq OWNED BY public.tbl_favoriteproduct.fapr_ide;


--
-- TOC entry 211 (class 1259 OID 158439)
-- Name: tbl_favoriteproduct_fapr_product_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_favoriteproduct_fapr_product_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 211
-- Name: tbl_favoriteproduct_fapr_product_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_favoriteproduct_fapr_product_seq OWNED BY public.tbl_favoriteproduct.fapr_product;


--
-- TOC entry 212 (class 1259 OID 158441)
-- Name: tbl_favoriteproduct_fapr_user_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_favoriteproduct_fapr_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 212
-- Name: tbl_favoriteproduct_fapr_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_favoriteproduct_fapr_user_seq OWNED BY public.tbl_favoriteproduct.fapr_user;


--
-- TOC entry 213 (class 1259 OID 158443)
-- Name: tbl_module; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_module (
    modu_ide integer NOT NULL,
    modu_description character varying(255) NOT NULL,
    modu_visibility smallint NOT NULL,
    modu_icon character varying(255) NOT NULL
);


--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE tbl_module; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.tbl_module IS 'tabla de módulo';


--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN tbl_module.modu_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_module.modu_ide IS 'pk autoincremental del módulo';


--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN tbl_module.modu_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_module.modu_description IS 'descripción del módulo';


--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN tbl_module.modu_visibility; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_module.modu_visibility IS 'fk del acceso al submódulo';


--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 213
-- Name: COLUMN tbl_module.modu_icon; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_module.modu_icon IS 'icon del submódulo';


--
-- TOC entry 214 (class 1259 OID 158449)
-- Name: tbl_module_modu_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_module_modu_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 214
-- Name: tbl_module_modu_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_module_modu_ide_seq OWNED BY public.tbl_module.modu_ide;


--
-- TOC entry 215 (class 1259 OID 158451)
-- Name: tbl_pemissioncrud; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_pemissioncrud (
    pecr_ide integer NOT NULL,
    pecr_description character varying(255) NOT NULL,
    pecr_url character varying(255) NOT NULL,
    pecr_icon character varying(255) NOT NULL
);


--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE tbl_pemissioncrud; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.tbl_pemissioncrud IS 'tabla de permiso CRUD';


--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN tbl_pemissioncrud.pecr_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_pemissioncrud.pecr_ide IS 'pk autoincremental del permiso para el crud';


--
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN tbl_pemissioncrud.pecr_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_pemissioncrud.pecr_description IS 'descripción del crud';


--
-- TOC entry 3065 (class 0 OID 0)
-- Dependencies: 215
-- Name: COLUMN tbl_pemissioncrud.pecr_url; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_pemissioncrud.pecr_url IS 'url del crud';


--
-- TOC entry 216 (class 1259 OID 158457)
-- Name: tbl_pemissioncrud_pecr_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_pemissioncrud_pecr_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3066 (class 0 OID 0)
-- Dependencies: 216
-- Name: tbl_pemissioncrud_pecr_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_pemissioncrud_pecr_ide_seq OWNED BY public.tbl_pemissioncrud.pecr_ide;


--
-- TOC entry 217 (class 1259 OID 158459)
-- Name: tbl_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_permission (
    perm_ide integer NOT NULL,
    perm_actu integer NOT NULL,
    perm_sumo integer NOT NULL,
    perm_pecr integer NOT NULL,
    perm_status character(1) NOT NULL
);


--
-- TOC entry 3067 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE tbl_permission; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.tbl_permission IS 'Tabla de permisos de Usuarios';


--
-- TOC entry 3068 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN tbl_permission.perm_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_permission.perm_ide IS 'pk autoincremental del permiso de usuario';


--
-- TOC entry 3069 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN tbl_permission.perm_actu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_permission.perm_actu IS 'fk del acceso tipo de usuario';


--
-- TOC entry 3070 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN tbl_permission.perm_sumo; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_permission.perm_sumo IS 'fk del permiso  submódulo';


--
-- TOC entry 3071 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN tbl_permission.perm_pecr; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_permission.perm_pecr IS 'fk del permiso crud';


--
-- TOC entry 3072 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN tbl_permission.perm_status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_permission.perm_status IS 'estatus del permiso de usuario (Activo / Inactivo)';


--
-- TOC entry 218 (class 1259 OID 158462)
-- Name: tbl_permission_perm_actu_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_permission_perm_actu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3073 (class 0 OID 0)
-- Dependencies: 218
-- Name: tbl_permission_perm_actu_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_permission_perm_actu_seq OWNED BY public.tbl_permission.perm_actu;


--
-- TOC entry 219 (class 1259 OID 158464)
-- Name: tbl_permission_perm_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_permission_perm_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3074 (class 0 OID 0)
-- Dependencies: 219
-- Name: tbl_permission_perm_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_permission_perm_ide_seq OWNED BY public.tbl_permission.perm_ide;


--
-- TOC entry 220 (class 1259 OID 158466)
-- Name: tbl_permission_perm_pecr_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_permission_perm_pecr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3075 (class 0 OID 0)
-- Dependencies: 220
-- Name: tbl_permission_perm_pecr_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_permission_perm_pecr_seq OWNED BY public.tbl_permission.perm_pecr;


--
-- TOC entry 221 (class 1259 OID 158468)
-- Name: tbl_permission_perm_sumo_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_permission_perm_sumo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 221
-- Name: tbl_permission_perm_sumo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_permission_perm_sumo_seq OWNED BY public.tbl_permission.perm_sumo;


--
-- TOC entry 222 (class 1259 OID 158470)
-- Name: tbl_popularproduct; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_popularproduct (
    popr_ide integer NOT NULL,
    popr_description character varying(255),
    popr_count character varying(255),
    popr_date timestamp(6) without time zone
);


--
-- TOC entry 3077 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN tbl_popularproduct.popr_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_popularproduct.popr_ide IS 'autoincremental de los productos populares';


--
-- TOC entry 3078 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN tbl_popularproduct.popr_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_popularproduct.popr_description IS 'descripción de la busqueda';


--
-- TOC entry 3079 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN tbl_popularproduct.popr_count; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_popularproduct.popr_count IS 'contador de la busqueda';


--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN tbl_popularproduct.popr_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_popularproduct.popr_date IS 'fecha';


--
-- TOC entry 223 (class 1259 OID 158476)
-- Name: tbl_popularsearchproduct_pose_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_popularsearchproduct_pose_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 223
-- Name: tbl_popularsearchproduct_pose_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_popularsearchproduct_pose_ide_seq OWNED BY public.tbl_popularproduct.popr_ide;


--
-- TOC entry 224 (class 1259 OID 158478)
-- Name: tbl_product; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_product (
    prod_ide integer NOT NULL,
    prod_name character varying(255),
    prod_price character varying(255),
    prod_link character varying(255),
    prod_src character varying(255),
    prod_url character varying(255),
    prod_categories text,
    prod_attribute text
);


--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tbl_product.prod_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_product.prod_ide IS 'autoincremental del producto';


--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tbl_product.prod_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_product.prod_name IS 'nombre del producto';


--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tbl_product.prod_price; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_product.prod_price IS 'precio del producto';


--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tbl_product.prod_link; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_product.prod_link IS 'permalink del producto';


--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tbl_product.prod_src; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_product.prod_src IS 'imagen del producto';


--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tbl_product.prod_url; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_product.prod_url IS 'url de la tienda';


--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tbl_product.prod_categories; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_product.prod_categories IS 'categorias del producto';


--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN tbl_product.prod_attribute; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_product.prod_attribute IS 'atributos del producto';


--
-- TOC entry 225 (class 1259 OID 158484)
-- Name: tbl_product_prod_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_product_prod_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 225
-- Name: tbl_product_prod_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_product_prod_ide_seq OWNED BY public.tbl_product.prod_ide;


--
-- TOC entry 226 (class 1259 OID 158486)
-- Name: tbl_setting; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_setting (
    sett_ide integer NOT NULL,
    sett_logo character varying(255),
    sett_sect1 text,
    sett_sect2 character varying(255),
    sett_sect3 character varying(255),
    sett_sect4 text,
    sett_sect5 text,
    sett_banner character varying(255)
);


--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN tbl_setting.sett_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_setting.sett_ide IS 'pk de la configuración';


--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN tbl_setting.sett_logo; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_setting.sett_logo IS 'logo';


--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN tbl_setting.sett_sect1; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_setting.sett_sect1 IS 'sección uno';


--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN tbl_setting.sett_sect2; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_setting.sett_sect2 IS 'sección dos';


--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN tbl_setting.sett_sect3; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_setting.sett_sect3 IS 'sección tres';


--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN tbl_setting.sett_sect4; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_setting.sett_sect4 IS 'sección cuatro';


--
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN tbl_setting.sett_sect5; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_setting.sett_sect5 IS 'sección cinco';


--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN tbl_setting.sett_banner; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_setting.sett_banner IS 'banner';


--
-- TOC entry 227 (class 1259 OID 158492)
-- Name: tbl_setting_sett_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_setting_sett_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 227
-- Name: tbl_setting_sett_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_setting_sett_ide_seq OWNED BY public.tbl_setting.sett_ide;


--
-- TOC entry 228 (class 1259 OID 158494)
-- Name: tbl_subcategory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_subcategory (
    suca_ide integer NOT NULL,
    suca_description character varying(255) NOT NULL,
    suca_cate integer NOT NULL,
    suca_status character(1) NOT NULL
);


--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 228
-- Name: TABLE tbl_subcategory; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.tbl_subcategory IS 'tabla de la subcategoría';


--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN tbl_subcategory.suca_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_subcategory.suca_ide IS 'pk autoincremental de la subcategoría';


--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN tbl_subcategory.suca_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_subcategory.suca_description IS 'descripcion de la subcategoría';


--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN tbl_subcategory.suca_cate; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_subcategory.suca_cate IS 'fk autoincremental de la categoría';


--
-- TOC entry 3104 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN tbl_subcategory.suca_status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_subcategory.suca_status IS 'estatus de la sub-categoría(Activo / Inactivo)';


--
-- TOC entry 229 (class 1259 OID 158497)
-- Name: tbl_subcategory_suca_cate_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_subcategory_suca_cate_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3105 (class 0 OID 0)
-- Dependencies: 229
-- Name: tbl_subcategory_suca_cate_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_subcategory_suca_cate_seq OWNED BY public.tbl_subcategory.suca_cate;


--
-- TOC entry 230 (class 1259 OID 158499)
-- Name: tbl_subcategory_suca_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_subcategory_suca_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3106 (class 0 OID 0)
-- Dependencies: 230
-- Name: tbl_subcategory_suca_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_subcategory_suca_ide_seq OWNED BY public.tbl_subcategory.suca_ide;


--
-- TOC entry 231 (class 1259 OID 158501)
-- Name: tbl_submodule; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_submodule (
    sumo_ide integer NOT NULL,
    sumo_description character varying(255) NOT NULL,
    sumo_url character varying(255) NOT NULL,
    sumo_icon character varying(255) NOT NULL,
    sumo_order smallint NOT NULL,
    sumo_modu integer NOT NULL
);


--
-- TOC entry 3107 (class 0 OID 0)
-- Dependencies: 231
-- Name: TABLE tbl_submodule; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.tbl_submodule IS 'tabla de submódulo';


--
-- TOC entry 3108 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN tbl_submodule.sumo_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_submodule.sumo_ide IS 'pk autoincremental del submódulo';


--
-- TOC entry 3109 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN tbl_submodule.sumo_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_submodule.sumo_description IS 'descripción del submódulo';


--
-- TOC entry 3110 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN tbl_submodule.sumo_url; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_submodule.sumo_url IS 'url del submódulo';


--
-- TOC entry 3111 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN tbl_submodule.sumo_icon; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_submodule.sumo_icon IS 'icon del submódulo';


--
-- TOC entry 3112 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN tbl_submodule.sumo_order; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_submodule.sumo_order IS 'orden del submódulo';


--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 231
-- Name: COLUMN tbl_submodule.sumo_modu; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_submodule.sumo_modu IS 'fk autoincremental del módulo';


--
-- TOC entry 232 (class 1259 OID 158507)
-- Name: tbl_submodule_sumo_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_submodule_sumo_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 232
-- Name: tbl_submodule_sumo_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_submodule_sumo_ide_seq OWNED BY public.tbl_submodule.sumo_ide;


--
-- TOC entry 233 (class 1259 OID 158509)
-- Name: tbl_submodule_sumo_modu_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_submodule_sumo_modu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 233
-- Name: tbl_submodule_sumo_modu_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_submodule_sumo_modu_seq OWNED BY public.tbl_submodule.sumo_modu;


--
-- TOC entry 234 (class 1259 OID 158511)
-- Name: tbl_token; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_token (
    toke_ide smallint NOT NULL,
    toke_description character varying(255),
    toke_user smallint NOT NULL
);


--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tbl_token.toke_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_token.toke_ide IS 'pk autoincremental del token';


--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tbl_token.toke_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_token.toke_description IS 'token';


--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tbl_token.toke_user; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_token.toke_user IS 'fk autoincremental del token';


--
-- TOC entry 235 (class 1259 OID 158514)
-- Name: tbl_token_toke_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_token_toke_ide_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 235
-- Name: tbl_token_toke_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_token_toke_ide_seq OWNED BY public.tbl_token.toke_ide;


--
-- TOC entry 236 (class 1259 OID 158516)
-- Name: tbl_token_toke_user_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_token_toke_user_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 236
-- Name: tbl_token_toke_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_token_toke_user_seq OWNED BY public.tbl_token.toke_user;


--
-- TOC entry 237 (class 1259 OID 158518)
-- Name: tbl_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_user (
    user_ide integer NOT NULL,
    user_name character varying(255),
    user_email character varying(255),
    user_birthdate timestamp(6) without time zone,
    user_aboutme character varying(255),
    user_avatar character varying(255),
    user_mobile character varying(255),
    user_dtregister timestamp(6) without time zone,
    user_dtactivation timestamp(6) without time zone,
    user_city character varying(255)
);


--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 237
-- Name: TABLE tbl_user; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.tbl_user IS 'tabla de usuario';


--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN tbl_user.user_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_user.user_ide IS 'pk autoincremental del usuario';


--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN tbl_user.user_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_user.user_name IS 'nombre completo del usuario';


--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN tbl_user.user_email; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_user.user_email IS 'email del usuario';


--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN tbl_user.user_birthdate; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_user.user_birthdate IS 'fecha de nacimiento  del usuario';


--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN tbl_user.user_aboutme; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_user.user_aboutme IS 'pequeño resumen acerca del usuario';


--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN tbl_user.user_avatar; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_user.user_avatar IS 'url del  avatar del usuario';


--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN tbl_user.user_mobile; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_user.user_mobile IS 'telefono celular del usuario';


--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN tbl_user.user_dtregister; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_user.user_dtregister IS 'fecha en que se registro el usuario';


--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN tbl_user.user_dtactivation; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_user.user_dtactivation IS 'fecha de activación el usuario';


--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN tbl_user.user_city; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_user.user_city IS 'ciudad del usuario';


--
-- TOC entry 238 (class 1259 OID 158524)
-- Name: tbl_user_user_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_user_user_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 238
-- Name: tbl_user_user_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_user_user_ide_seq OWNED BY public.tbl_user.user_ide;


--
-- TOC entry 239 (class 1259 OID 158526)
-- Name: tbl_usertype; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tbl_usertype (
    usty_ide integer NOT NULL,
    usty_description character varying(255) NOT NULL,
    usty_status character(1) NOT NULL
);


--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 239
-- Name: TABLE tbl_usertype; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.tbl_usertype IS 'tabla tipo de usuario';


--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN tbl_usertype.usty_ide; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_usertype.usty_ide IS 'pk autoincremental del tipo de usuario';


--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN tbl_usertype.usty_description; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_usertype.usty_description IS 'descripción del tipo de usuario';


--
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN tbl_usertype.usty_status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.tbl_usertype.usty_status IS 'estatus del tipo de usuario (Activo / Inactivo)';


--
-- TOC entry 240 (class 1259 OID 158529)
-- Name: tbl_usertype_usty_ide_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tbl_usertype_usty_ide_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 240
-- Name: tbl_usertype_usty_ide_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tbl_usertype_usty_ide_seq OWNED BY public.tbl_usertype.usty_ide;


--
-- TOC entry 2815 (class 2604 OID 158531)
-- Name: tbl_access acce_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_access ALTER COLUMN acce_ide SET DEFAULT nextval('public.tbl_access_acce_ide_seq'::regclass);


--
-- TOC entry 2816 (class 2604 OID 158532)
-- Name: tbl_access acce_user; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_access ALTER COLUMN acce_user SET DEFAULT nextval('public.tbl_access_acce_user_seq'::regclass);


--
-- TOC entry 2817 (class 2604 OID 158533)
-- Name: tbl_accesstypeuser actu_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_accesstypeuser ALTER COLUMN actu_ide SET DEFAULT nextval('public.tbl_accesstypeuser_actu_ide_seq'::regclass);


--
-- TOC entry 2818 (class 2604 OID 158534)
-- Name: tbl_accesstypeuser actu_acce; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_accesstypeuser ALTER COLUMN actu_acce SET DEFAULT nextval('public.tbl_accesstypeuser_actu_acce_seq'::regclass);


--
-- TOC entry 2819 (class 2604 OID 158535)
-- Name: tbl_accesstypeuser actu_usty; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_accesstypeuser ALTER COLUMN actu_usty SET DEFAULT nextval('public.tbl_accesstypeuser_actu_usty_seq'::regclass);


--
-- TOC entry 2820 (class 2604 OID 158536)
-- Name: tbl_category cate_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_category ALTER COLUMN cate_ide SET DEFAULT nextval('public.tbl_category_cate_ide_seq'::regclass);


--
-- TOC entry 2821 (class 2604 OID 158537)
-- Name: tbl_city city_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_city ALTER COLUMN city_ide SET DEFAULT nextval('public.tbl_city_city_ide_seq'::regclass);


--
-- TOC entry 2823 (class 2604 OID 158539)
-- Name: tbl_favoriteproduct fapr_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_favoriteproduct ALTER COLUMN fapr_ide SET DEFAULT nextval('public.tbl_favoriteproduct_fapr_ide_seq'::regclass);


--
-- TOC entry 2824 (class 2604 OID 158540)
-- Name: tbl_favoriteproduct fapr_user; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_favoriteproduct ALTER COLUMN fapr_user SET DEFAULT nextval('public.tbl_favoriteproduct_fapr_user_seq'::regclass);


--
-- TOC entry 2825 (class 2604 OID 158541)
-- Name: tbl_favoriteproduct fapr_product; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_favoriteproduct ALTER COLUMN fapr_product SET DEFAULT nextval('public.tbl_favoriteproduct_fapr_product_seq'::regclass);


--
-- TOC entry 2826 (class 2604 OID 158542)
-- Name: tbl_module modu_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_module ALTER COLUMN modu_ide SET DEFAULT nextval('public.tbl_module_modu_ide_seq'::regclass);


--
-- TOC entry 2827 (class 2604 OID 158543)
-- Name: tbl_pemissioncrud pecr_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_pemissioncrud ALTER COLUMN pecr_ide SET DEFAULT nextval('public.tbl_pemissioncrud_pecr_ide_seq'::regclass);


--
-- TOC entry 2831 (class 2604 OID 158544)
-- Name: tbl_permission perm_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_permission ALTER COLUMN perm_ide SET DEFAULT nextval('public.tbl_permission_perm_ide_seq'::regclass);


--
-- TOC entry 2828 (class 2604 OID 158545)
-- Name: tbl_permission perm_actu; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_permission ALTER COLUMN perm_actu SET DEFAULT nextval('public.tbl_permission_perm_actu_seq'::regclass);


--
-- TOC entry 2829 (class 2604 OID 158546)
-- Name: tbl_permission perm_sumo; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_permission ALTER COLUMN perm_sumo SET DEFAULT nextval('public.tbl_permission_perm_sumo_seq'::regclass);


--
-- TOC entry 2830 (class 2604 OID 158547)
-- Name: tbl_permission perm_pecr; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_permission ALTER COLUMN perm_pecr SET DEFAULT nextval('public.tbl_permission_perm_pecr_seq'::regclass);


--
-- TOC entry 2832 (class 2604 OID 158548)
-- Name: tbl_popularproduct popr_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_popularproduct ALTER COLUMN popr_ide SET DEFAULT nextval('public.tbl_popularsearchproduct_pose_ide_seq'::regclass);


--
-- TOC entry 2833 (class 2604 OID 158549)
-- Name: tbl_product prod_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_product ALTER COLUMN prod_ide SET DEFAULT nextval('public.tbl_product_prod_ide_seq'::regclass);


--
-- TOC entry 2834 (class 2604 OID 158550)
-- Name: tbl_setting sett_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_setting ALTER COLUMN sett_ide SET DEFAULT nextval('public.tbl_setting_sett_ide_seq'::regclass);


--
-- TOC entry 2822 (class 2604 OID 158538)
-- Name: tbl_store stor_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_store ALTER COLUMN stor_ide SET DEFAULT nextval('public.tbl_client_clie_ide_seq'::regclass);


--
-- TOC entry 2835 (class 2604 OID 158551)
-- Name: tbl_subcategory suca_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_subcategory ALTER COLUMN suca_ide SET DEFAULT nextval('public.tbl_subcategory_suca_ide_seq'::regclass);


--
-- TOC entry 2836 (class 2604 OID 158552)
-- Name: tbl_subcategory suca_cate; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_subcategory ALTER COLUMN suca_cate SET DEFAULT nextval('public.tbl_subcategory_suca_cate_seq'::regclass);


--
-- TOC entry 2837 (class 2604 OID 158553)
-- Name: tbl_submodule sumo_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_submodule ALTER COLUMN sumo_ide SET DEFAULT nextval('public.tbl_submodule_sumo_ide_seq'::regclass);


--
-- TOC entry 2838 (class 2604 OID 158554)
-- Name: tbl_submodule sumo_modu; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_submodule ALTER COLUMN sumo_modu SET DEFAULT nextval('public.tbl_submodule_sumo_modu_seq'::regclass);


--
-- TOC entry 2839 (class 2604 OID 158555)
-- Name: tbl_token toke_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_token ALTER COLUMN toke_ide SET DEFAULT nextval('public.tbl_token_toke_ide_seq'::regclass);


--
-- TOC entry 2840 (class 2604 OID 158556)
-- Name: tbl_token toke_user; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_token ALTER COLUMN toke_user SET DEFAULT nextval('public.tbl_token_toke_user_seq'::regclass);


--
-- TOC entry 2841 (class 2604 OID 158557)
-- Name: tbl_user user_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_user ALTER COLUMN user_ide SET DEFAULT nextval('public.tbl_user_user_ide_seq'::regclass);


--
-- TOC entry 2842 (class 2604 OID 158558)
-- Name: tbl_usertype usty_ide; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_usertype ALTER COLUMN usty_ide SET DEFAULT nextval('public.tbl_usertype_usty_ide_seq'::regclass);


--
-- TOC entry 2844 (class 2606 OID 158560)
-- Name: tbl_access  tbl_access_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_access
    ADD CONSTRAINT " tbl_access_pkey" PRIMARY KEY (acce_ide);


--
-- TOC entry 2846 (class 2606 OID 158562)
-- Name: tbl_accesstypeuser  tbl_accesstypeuser_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_accesstypeuser
    ADD CONSTRAINT " tbl_accesstypeuser_pkey" PRIMARY KEY (actu_ide);


--
-- TOC entry 2856 (class 2606 OID 158564)
-- Name: tbl_module  tbl_module_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_module
    ADD CONSTRAINT " tbl_module_pkey" PRIMARY KEY (modu_ide);


--
-- TOC entry 2860 (class 2606 OID 158566)
-- Name: tbl_permission  tbl_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_permission
    ADD CONSTRAINT " tbl_permission_pkey" PRIMARY KEY (perm_ide);


--
-- TOC entry 2870 (class 2606 OID 158568)
-- Name: tbl_submodule  tbl_submodule_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_submodule
    ADD CONSTRAINT " tbl_submodule_pkey" PRIMARY KEY (sumo_ide);


--
-- TOC entry 2876 (class 2606 OID 158570)
-- Name: tbl_usertype  tbl_usertype_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_usertype
    ADD CONSTRAINT " tbl_usertype_pkey" PRIMARY KEY (usty_ide);


--
-- TOC entry 2848 (class 2606 OID 158572)
-- Name: tbl_category tbl_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_pkey PRIMARY KEY (cate_ide);


--
-- TOC entry 2850 (class 2606 OID 158574)
-- Name: tbl_city tbl_city_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_city
    ADD CONSTRAINT tbl_city_pkey PRIMARY KEY (city_ide);


--
-- TOC entry 2852 (class 2606 OID 158645)
-- Name: tbl_store tbl_client_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_store
    ADD CONSTRAINT tbl_client_pkey PRIMARY KEY (stor_ide);


--
-- TOC entry 2854 (class 2606 OID 158578)
-- Name: tbl_favoriteproduct tbl_favoriteproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_favoriteproduct
    ADD CONSTRAINT tbl_favoriteproduct_pkey PRIMARY KEY (fapr_ide);


--
-- TOC entry 2858 (class 2606 OID 158580)
-- Name: tbl_pemissioncrud tbl_pemissioncrud_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_pemissioncrud
    ADD CONSTRAINT tbl_pemissioncrud_pkey PRIMARY KEY (pecr_ide);


--
-- TOC entry 2862 (class 2606 OID 158582)
-- Name: tbl_popularproduct tbl_popularsearchproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_popularproduct
    ADD CONSTRAINT tbl_popularsearchproduct_pkey PRIMARY KEY (popr_ide);


--
-- TOC entry 2864 (class 2606 OID 158584)
-- Name: tbl_product tbl_product_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_product
    ADD CONSTRAINT tbl_product_pkey PRIMARY KEY (prod_ide);


--
-- TOC entry 2866 (class 2606 OID 158586)
-- Name: tbl_setting tbl_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_setting
    ADD CONSTRAINT tbl_setting_pkey PRIMARY KEY (sett_ide);


--
-- TOC entry 2868 (class 2606 OID 158588)
-- Name: tbl_subcategory tbl_subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_subcategory
    ADD CONSTRAINT tbl_subcategory_pkey PRIMARY KEY (suca_ide);


--
-- TOC entry 2872 (class 2606 OID 158590)
-- Name: tbl_token tbl_token_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_token
    ADD CONSTRAINT tbl_token_pkey PRIMARY KEY (toke_ide);


--
-- TOC entry 2874 (class 2606 OID 158592)
-- Name: tbl_user user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_user
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_ide);


--
-- TOC entry 2877 (class 2606 OID 158593)
-- Name: tbl_access acce_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_access
    ADD CONSTRAINT acce_user FOREIGN KEY (acce_user) REFERENCES public.tbl_user(user_ide) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 2877
-- Name: CONSTRAINT acce_user ON tbl_access; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT acce_user ON public.tbl_access IS 'fk relación entre acceso y usuario';


--
-- TOC entry 2878 (class 2606 OID 158598)
-- Name: tbl_accesstypeuser actu_acce; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_accesstypeuser
    ADD CONSTRAINT actu_acce FOREIGN KEY (actu_acce) REFERENCES public.tbl_access(acce_ide) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 2878
-- Name: CONSTRAINT actu_acce ON tbl_accesstypeuser; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT actu_acce ON public.tbl_accesstypeuser IS 'fk autoincremental del acceso';


--
-- TOC entry 2879 (class 2606 OID 158603)
-- Name: tbl_accesstypeuser actu_usty; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_accesstypeuser
    ADD CONSTRAINT actu_usty FOREIGN KEY (actu_usty) REFERENCES public.tbl_usertype(usty_ide) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 2879
-- Name: CONSTRAINT actu_usty ON tbl_accesstypeuser; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT actu_usty ON public.tbl_accesstypeuser IS 'fk autoincremental de tipo de ususario';


--
-- TOC entry 2880 (class 2606 OID 158608)
-- Name: tbl_favoriteproduct fapr_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_favoriteproduct
    ADD CONSTRAINT fapr_user FOREIGN KEY (fapr_user) REFERENCES public.tbl_user(user_ide) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2881 (class 2606 OID 158613)
-- Name: tbl_permission perm_actu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_permission
    ADD CONSTRAINT perm_actu FOREIGN KEY (perm_actu) REFERENCES public.tbl_accesstypeuser(actu_ide) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 2881
-- Name: CONSTRAINT perm_actu ON tbl_permission; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT perm_actu ON public.tbl_permission IS 'fk del acceso tipo de usuario';


--
-- TOC entry 2882 (class 2606 OID 158618)
-- Name: tbl_permission perm_pecr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_permission
    ADD CONSTRAINT perm_pecr FOREIGN KEY (perm_pecr) REFERENCES public.tbl_pemissioncrud(pecr_ide) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 2882
-- Name: CONSTRAINT perm_pecr ON tbl_permission; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT perm_pecr ON public.tbl_permission IS 'fk del permiso crud';


--
-- TOC entry 2883 (class 2606 OID 158623)
-- Name: tbl_permission perm_sumo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_permission
    ADD CONSTRAINT perm_sumo FOREIGN KEY (perm_sumo) REFERENCES public.tbl_submodule(sumo_ide) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3143 (class 0 OID 0)
-- Dependencies: 2883
-- Name: CONSTRAINT perm_sumo ON tbl_permission; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT perm_sumo ON public.tbl_permission IS 'fk del permiso  submódulo';


--
-- TOC entry 2884 (class 2606 OID 158628)
-- Name: tbl_subcategory suca_cate; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_subcategory
    ADD CONSTRAINT suca_cate FOREIGN KEY (suca_cate) REFERENCES public.tbl_category(cate_ide) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3144 (class 0 OID 0)
-- Dependencies: 2884
-- Name: CONSTRAINT suca_cate ON tbl_subcategory; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT suca_cate ON public.tbl_subcategory IS 'fk autoincremental de la categoría';


--
-- TOC entry 2885 (class 2606 OID 158633)
-- Name: tbl_submodule sumo_modu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_submodule
    ADD CONSTRAINT sumo_modu FOREIGN KEY (sumo_modu) REFERENCES public.tbl_module(modu_ide) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3145 (class 0 OID 0)
-- Dependencies: 2885
-- Name: CONSTRAINT sumo_modu ON tbl_submodule; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT sumo_modu ON public.tbl_submodule IS 'fk autoincremental del módulo';


--
-- TOC entry 2886 (class 2606 OID 158638)
-- Name: tbl_token toke_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tbl_token
    ADD CONSTRAINT toke_user FOREIGN KEY (toke_user) REFERENCES public.tbl_user(user_ide) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3146 (class 0 OID 0)
-- Dependencies: 2886
-- Name: CONSTRAINT toke_user ON tbl_token; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON CONSTRAINT toke_user ON public.tbl_token IS 'relación token con usuario';


-- Completed on 2019-12-09 17:04:31

--
-- PostgreSQL database dump complete
--

