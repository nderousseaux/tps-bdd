create table "USER"
(
    "idUser" NUMBER        not null
        constraint USER_PK
            primary key,
    LOGIN    VARCHAR2(255) not null,
    EMAIL    VARCHAR2(255) not null
        check (REGEXP_LIKE(EMAIL, '^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$')),
    PASSWORD VARCHAR2(255) not null,
    SALT     VARCHAR2(5)   not null
)
/

create unique index USER_EMAIL_UINDEX
    on "USER" (EMAIL)
/

create unique index USER_LOGIN_UINDEX
    on "USER" (LOGIN)
/

create table RECEIPT
(
    "idReceipt" NUMBER        not null
        constraint RECEIPT_PK
            primary key,
    NAME        VARCHAR2(255) not null,
    DESCRIPTION VARCHAR2(2048),
    DIFFICULTY  VARCHAR2(30)
        check (DIFFICULTY in ('Très facile', 'Facile', 'Moyen', 'Difficile')),
    PRICE       NUMBER
        check (PRICE > 0 AND PRICE < 6),
    "nbPeople"  NUMBER,
    TEMPS       NUMBER,
    "idUser"    NUMBER
        constraint RECEIPT_USER_IDUSER_FK
            references "USER"
)
/

create table STEP
(
    "idStep"    NUMBER        not null
        constraint STEP_PK
            primary key,
    NAME        VARCHAR2(255),
    DESCRIPTION VARCHAR2(255) not null,
    TEMPS       NUMBER
)
/

create table RECEIPT_STEP
(
    "idStep"    NUMBER not null
        constraint RECEIPT_STEP_STEP_IDSTEP_FK
            references STEP,
    "idReceipt" NUMBER not null
        constraint RECEIPT_STEP_RECEIPT_IDRECEIPT_FK
            references RECEIPT,
    constraint RECEIPT_STEP_PK
        primary key ("idStep", "idReceipt")
)
/

create table ILLUSTRATION
(
    "idIllustration" NUMBER not null
        constraint ILLUSTRATION_PK
            primary key,
    "file"           BLOB   not null
)
/

create table STEP_ILLUSTRATION
(
    "idStep"         NUMBER not null
        constraint STEP_ILLUSTRATION_STEP_IDSTEP_FK
            references STEP,
    "idIllustration" NUMBER not null
        constraint STEP_ILLUSTRATION_ILLUSTRATION_IDILLUSTRATION_FK
            references ILLUSTRATION,
    constraint STEP_ILLUSTRATION_PK
        primary key ("idStep", "idIllustration")
)
/

create table RECEIPT_ILLUSTRATION
(
    "idReceipt"      NUMBER not null
        constraint RECEIPT_ILLUSTRATION_RECEIPT_IDRECEIPT_FK
            references RECEIPT,
    "idIllustration" NUMBER not null
        constraint RECEIPT_ILLUSTRATION_ILLUSTRATION_IDILLUSTRATION_FK
            references ILLUSTRATION,
    constraint RECEIPT_ILLUSTRATION_PK
        primary key ("idReceipt", "idIllustration")
)
/

create table DIET
(
    "idDiet" NUMBER        not null
        constraint DIET_PK
            primary key,
    NAME     VARCHAR2(255) not null
)
/

create table GROUPE_ING
(
    "idGroupeIng" NUMBER not null
        constraint GROUPE_ING_PK
            primary key,
    NAME          VARCHAR2(255)
)
/

create table INGREDIENT
(
    "idIngredient" NUMBER        not null
        constraint INGREDIENT_PK
            primary key,
    NAME           VARCHAR2(255) not null,
    QUANTITYTYPE   VARCHAR2(50)  not null
        check (QUANTITYTYPE IN ('gram', 'unity')),
    CALORIE        NUMBER,
    LIPID          NUMBER,
    PROTID         NUMBER,
    GLUCID         NUMBER,
    "idGroupe"     NUMBER
        constraint INGREDIENT_GROUPE_ING_IDGROUPEING_FK
            references GROUPE_ING
)
/

create table RECEIPT_INGREDIENT
(
    "idIngredient" NUMBER
        constraint RECEIPT_INGREDIENT_INGREDIENT_IDINGREDIENT_FK
            references INGREDIENT,
    "idReceipt"    NUMBER
        constraint RECEIPT_INGREDIENT_RECEIPT_IDRECEIPT_FK
            references RECEIPT,
    QUANTITY       NUMBER,
    constraint RECEIPT_INGREDIENT_PK
        unique ("idIngredient", "idReceipt")
)
/

create table USER_INGREDIENT
(
    "idUser"       NUMBER not null
        constraint USER_INGREDIENT_USER_IDUSER_FK
            references "USER",
    "idIngredient" NUMBER not null
        constraint USER_INGREDIENT_INGREDIENT_IDINGREDIENT_FK
            references INGREDIENT,
    QUANTITY       NUMBER,
    constraint USER_INGREDIENT_PK
        primary key ("idUser", "idIngredient")
)
/

create table INGREDIENT_DIET
(
    "idIngredient" NUMBER not null
        constraint INGREDIENT_DIET_INGREDIENT_IDINGREDIENT_FK
            references INGREDIENT,
    "IdDiet"       NUMBER not null
        constraint INGREDIENT_DIET_DIET_IDDIET_FK
            references DIET,
    constraint INGREDIENT_DIET_PK
        primary key ("idIngredient", "IdDiet")
)
/

create table PLANNING
(
    "idPlanning" NUMBER not null
        constraint PLANNING_PK
            primary key,
    NAME         VARCHAR2(255),
    "dateExp"    DATE,
    "idUser"     NUMBER not null
        constraint PLANNING_USER_IDUSER_FK
            references "USER"
)
/

create table PLANNING_RECEIPT
(
    "idPlanning" NUMBER not null
        constraint PLANNING_RECEIPT_PLANNING_IDPLANNING_FK
            references PLANNING,
    "idReceipt"  NUMBER not null
        constraint PLANNING_RECEIPT_RECEIPT_IDRECEIPT_FK
            references RECEIPT,
    constraint PLANNING_RECEIPT_PK
        primary key ("idPlanning", "idReceipt")
)
/

create table PLANNING_ARCH
(
    "idPlanning" NUMBER not null
        constraint PLANNING_ARCH_PK
            primary key,
    NAME         VARCHAR2(255),
    "dateExp"    DATE,
    "idUser"     NUMBER not null
        constraint PLANNING_ARCH_USER_IDUSER_FK
            references "USER"
)
/

create table PLANNING_ARCH_RECEIPT
(
    "idPlanning" NUMBER not null
        constraint PLANNING_ARCH_RECEIPT_PLANNING_IDPLANNING_ARCH_FK
            references PLANNING_ARCH,
    "idReceipt"  NUMBER not null
        constraint PLANNING_ARCH_RECEIPT_RECEIPT_IDRECEIPT_FK
            references RECEIPT,
    constraint PLANNING_ARCH_RECEIPT_PK
        primary key ("idPlanning", "idReceipt")
)
/

create table LIST_TO_BUY
(
    "idListToBuy" NUMBER not null
        constraint LIST_TO_BUY_PK
            primary key,
    NAME          VARCHAR2(255),
    "idPlanning"  NUMBER not null
        constraint LIST_TO_BUY_PLANNING_IDPLANNING_FK
            references PLANNING,
    "idUser"      NUMBER
        constraint LIST_TO_BUY_USER_IDUSER_FK
            references "USER"
)
/

create table LIST_TO_BUY_ARCH
(
    "idListToBuy" NUMBER not null
        constraint LIST_TO_BUY_ARCH_PK
            primary key,
    NAME          VARCHAR2(255),
    "idPlanning"  NUMBER not null
        constraint LIST_TO_BUY_ARCH_PLANNING_ARCH_IDPLANNING_FK
            references PLANNING_ARCH,
    "idUser"      NUMBER
        constraint LIST_TO_BUY_ARCH_USER_IDUSER_FK
            references "USER"
)
/