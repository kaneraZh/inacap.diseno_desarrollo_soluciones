--
-- File generated with SQLiteStudio v3.2.1 on mi. dic. 13 07:09:42 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_group
DROP TABLE IF EXISTS auth_group;

CREATE TABLE auth_group (
    id   INTEGER       NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (150) NOT NULL
                       UNIQUE
);

INSERT INTO auth_group (
                           id,
                           name
                       )
                       VALUES (
                           1,
                           'jefe'
                       );

INSERT INTO auth_group (
                           id,
                           name
                       )
                       VALUES (
                           2,
                           'empleado'
                       );

INSERT INTO auth_group (
                           id,
                           name
                       )
                       VALUES (
                           3,
                           'cliente'
                       );


-- Table: auth_group_permissions
DROP TABLE IF EXISTS auth_group_permissions;

CREATE TABLE auth_group_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    group_id      INTEGER NOT NULL
                          REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       1,
                                       1,
                                       25
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       2,
                                       1,
                                       26
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       3,
                                       1,
                                       27
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       4,
                                       1,
                                       28
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       5,
                                       1,
                                       29
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       6,
                                       1,
                                       30
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       7,
                                       1,
                                       31
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       8,
                                       1,
                                       32
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       9,
                                       1,
                                       33
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       10,
                                       1,
                                       34
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       11,
                                       1,
                                       35
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       12,
                                       1,
                                       36
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       13,
                                       1,
                                       37
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       14,
                                       1,
                                       38
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       15,
                                       1,
                                       39
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       16,
                                       1,
                                       40
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       17,
                                       1,
                                       41
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       18,
                                       1,
                                       42
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       19,
                                       1,
                                       43
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       20,
                                       1,
                                       44
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       21,
                                       1,
                                       45
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       22,
                                       1,
                                       46
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       23,
                                       1,
                                       47
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       24,
                                       1,
                                       48
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       25,
                                       1,
                                       49
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       26,
                                       1,
                                       50
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       27,
                                       1,
                                       51
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       28,
                                       1,
                                       52
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       29,
                                       1,
                                       53
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       30,
                                       1,
                                       54
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       31,
                                       1,
                                       55
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       32,
                                       1,
                                       56
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       33,
                                       1,
                                       57
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       34,
                                       1,
                                       58
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       35,
                                       1,
                                       59
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       36,
                                       1,
                                       60
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       37,
                                       1,
                                       61
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       38,
                                       1,
                                       62
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       39,
                                       1,
                                       63
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       40,
                                       1,
                                       64
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       41,
                                       1,
                                       65
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       42,
                                       1,
                                       66
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       43,
                                       1,
                                       67
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       44,
                                       1,
                                       68
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       45,
                                       1,
                                       69
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       46,
                                       1,
                                       70
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       47,
                                       1,
                                       71
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       48,
                                       1,
                                       72
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       49,
                                       1,
                                       73
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       50,
                                       1,
                                       74
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       51,
                                       1,
                                       75
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       52,
                                       1,
                                       76
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       53,
                                       1,
                                       77
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       54,
                                       1,
                                       78
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       55,
                                       2,
                                       67
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       56,
                                       2,
                                       68
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       57,
                                       2,
                                       70
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       58,
                                       2,
                                       71
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       59,
                                       2,
                                       72
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       60,
                                       2,
                                       74
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       61,
                                       2,
                                       60
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       62,
                                       2,
                                       47
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       63,
                                       2,
                                       48
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       64,
                                       2,
                                       49
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       65,
                                       2,
                                       50
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       66,
                                       2,
                                       25
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       67,
                                       2,
                                       26
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       68,
                                       2,
                                       59
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       69,
                                       2,
                                       28
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       70,
                                       2,
                                       61
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       71,
                                       2,
                                       62
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       72,
                                       3,
                                       75
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       73,
                                       3,
                                       77
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       74,
                                       3,
                                       78
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       75,
                                       3,
                                       50
                                   );

INSERT INTO auth_group_permissions (
                                       id,
                                       group_id,
                                       permission_id
                                   )
                                   VALUES (
                                       76,
                                       3,
                                       62
                                   );


-- Table: auth_permission
DROP TABLE IF EXISTS auth_permission;

CREATE TABLE auth_permission (
    id              INTEGER       NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    content_type_id INTEGER       NOT NULL
                                  REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    codename        VARCHAR (100) NOT NULL,
    name            VARCHAR (255) NOT NULL
);

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                1,
                                1,
                                'add_logentry',
                                'Can add log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                2,
                                1,
                                'change_logentry',
                                'Can change log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                3,
                                1,
                                'delete_logentry',
                                'Can delete log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                4,
                                1,
                                'view_logentry',
                                'Can view log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                5,
                                2,
                                'add_permission',
                                'Can add permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                6,
                                2,
                                'change_permission',
                                'Can change permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                7,
                                2,
                                'delete_permission',
                                'Can delete permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                8,
                                2,
                                'view_permission',
                                'Can view permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                9,
                                3,
                                'add_group',
                                'Can add group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                10,
                                3,
                                'change_group',
                                'Can change group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                11,
                                3,
                                'delete_group',
                                'Can delete group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                12,
                                3,
                                'view_group',
                                'Can view group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                13,
                                4,
                                'add_user',
                                'Can add user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                14,
                                4,
                                'change_user',
                                'Can change user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                15,
                                4,
                                'delete_user',
                                'Can delete user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                16,
                                4,
                                'view_user',
                                'Can view user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                17,
                                5,
                                'add_contenttype',
                                'Can add content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                18,
                                5,
                                'change_contenttype',
                                'Can change content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                19,
                                5,
                                'delete_contenttype',
                                'Can delete content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                20,
                                5,
                                'view_contenttype',
                                'Can view content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                21,
                                6,
                                'add_session',
                                'Can add session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                22,
                                6,
                                'change_session',
                                'Can change session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                23,
                                6,
                                'delete_session',
                                'Can delete session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                24,
                                6,
                                'view_session',
                                'Can view session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                25,
                                7,
                                'add_boleta',
                                'Can add boleta'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                26,
                                7,
                                'change_boleta',
                                'Can change boleta'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                27,
                                7,
                                'delete_boleta',
                                'Can delete boleta'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                28,
                                7,
                                'view_boleta',
                                'Can view boleta'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                29,
                                7,
                                'can_add_boleta',
                                'Puede agregar boletas'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                30,
                                7,
                                'can_delete_boleta',
                                'Puede eliminar boletas'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                31,
                                7,
                                'can_update_boleta',
                                'Puede actualizar boletas'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                32,
                                8,
                                'add_factura',
                                'Can add factura'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                33,
                                8,
                                'change_factura',
                                'Can change factura'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                34,
                                8,
                                'delete_factura',
                                'Can delete factura'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                35,
                                8,
                                'view_factura',
                                'Can view factura'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                36,
                                8,
                                'can_add_factura',
                                'Puede agregar facturas'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                37,
                                8,
                                'can_delete_factura',
                                'Puede eliminar facturas'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                38,
                                8,
                                'can_update_factura',
                                'Puede actualizar facturas'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                39,
                                9,
                                'add_persona',
                                'Can add user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                40,
                                9,
                                'change_persona',
                                'Can change user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                41,
                                9,
                                'delete_persona',
                                'Can delete user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                42,
                                9,
                                'view_persona',
                                'Can view user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                43,
                                10,
                                'add_proveedor',
                                'Can add proveedor'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                44,
                                10,
                                'change_proveedor',
                                'Can change proveedor'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                45,
                                10,
                                'delete_proveedor',
                                'Can delete proveedor'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                46,
                                10,
                                'view_proveedor',
                                'Can view proveedor'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                47,
                                11,
                                'add_servicio',
                                'Can add servicio'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                48,
                                11,
                                'change_servicio',
                                'Can change servicio'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                49,
                                11,
                                'delete_servicio',
                                'Can delete servicio'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                50,
                                11,
                                'view_servicio',
                                'Can view servicio'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                51,
                                12,
                                'add_cliente',
                                'Can add Cliente'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                52,
                                12,
                                'change_cliente',
                                'Can change Cliente'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                53,
                                12,
                                'delete_cliente',
                                'Can delete Cliente'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                54,
                                12,
                                'view_cliente',
                                'Can view Cliente'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                55,
                                13,
                                'add_empleado',
                                'Can add Empleado'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                56,
                                13,
                                'change_empleado',
                                'Can change Empleado'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                57,
                                13,
                                'delete_empleado',
                                'Can delete Empleado'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                58,
                                13,
                                'view_empleado',
                                'Can view Empleado'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                59,
                                14,
                                'add_producto',
                                'Can add producto'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                60,
                                14,
                                'change_producto',
                                'Can change producto'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                61,
                                14,
                                'delete_producto',
                                'Can delete producto'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                62,
                                14,
                                'view_producto',
                                'Can view producto'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                63,
                                15,
                                'add_factura_detalle',
                                'Can add factura_detalle'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                64,
                                15,
                                'change_factura_detalle',
                                'Can change factura_detalle'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                65,
                                15,
                                'delete_factura_detalle',
                                'Can delete factura_detalle'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                66,
                                15,
                                'view_factura_detalle',
                                'Can view factura_detalle'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                67,
                                16,
                                'add_boleta_servicio',
                                'Can add boleta_servicio'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                68,
                                16,
                                'change_boleta_servicio',
                                'Can change boleta_servicio'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                69,
                                16,
                                'delete_boleta_servicio',
                                'Can delete boleta_servicio'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                70,
                                16,
                                'view_boleta_servicio',
                                'Can view boleta_servicio'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                71,
                                17,
                                'add_boleta_producto',
                                'Can add boleta_producto'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                72,
                                17,
                                'change_boleta_producto',
                                'Can change boleta_producto'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                73,
                                17,
                                'delete_boleta_producto',
                                'Can delete boleta_producto'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                74,
                                17,
                                'view_boleta_producto',
                                'Can view boleta_producto'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                75,
                                18,
                                'add_cita',
                                'Can add cita'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                76,
                                18,
                                'change_cita',
                                'Can change cita'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                77,
                                18,
                                'delete_cita',
                                'Can delete cita'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                78,
                                18,
                                'view_cita',
                                'Can view cita'
                            );


-- Table: auth_user
DROP TABLE IF EXISTS auth_user;

CREATE TABLE auth_user (
    id           INTEGER       NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    password     VARCHAR (128) NOT NULL,
    last_login   DATETIME,
    is_superuser BOOL          NOT NULL,
    username     VARCHAR (150) NOT NULL
                               UNIQUE,
    last_name    VARCHAR (150) NOT NULL,
    email        VARCHAR (254) NOT NULL,
    is_staff     BOOL          NOT NULL,
    is_active    BOOL          NOT NULL,
    date_joined  DATETIME      NOT NULL,
    first_name   VARCHAR (150) NOT NULL
);

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          1,
                          'pbkdf2_sha256$600000$hbw4gRIg2TDntuJTSHZo7S$jNUyIHdFoertWJljOpO2JurTMr/pm/4lZ3xIZo05so0=',
                          '2023-12-13 09:54:17.066244',
                          1,
                          'admin',
                          '',
                          '',
                          1,
                          1,
                          '2023-11-29 01:20:40.061977',
                          ''
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          2,
                          'pbkdf2_sha256$600000$Ybs1RbEicEqxDRWPkzDYox$GfQWfQRQCA6hGiujdbznDzq4+moaXDJcJFn0QSxvBII=',
                          '2023-12-13 08:07:59.825380',
                          0,
                          'pipe',
                          'villarroel',
                          'fvillarroel@gmail.com',
                          0,
                          1,
                          '2023-11-29 04:22:51.279571',
                          'felipe'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          5,
                          'pbkdf2_sha256$600000$n0f5sEmmpbu4SFLAoTBcJa$IsqXwsyRf/AYRmL8itm001HWxK3M+D9EwaEgBw5b8dc=',
                          '2023-12-05 19:59:48.723636',
                          0,
                          'juan123@gmail.com',
                          'Sepulveda',
                          'juan123@gmail.com',
                          0,
                          1,
                          '2023-12-05 19:57:55.292229',
                          'Juan'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          7,
                          'pbkdf2_sha256$600000$0YGzD7akTnkb9M1MJiAdIV$ALaw6LArIiuO4OSNmIBphlctmCTU36q8v/ZsLg6y0UM=',
                          NULL,
                          0,
                          'leomartinez@gmail.com',
                          'Martinez',
                          'leomartinez@gmail.com',
                          0,
                          1,
                          '2023-12-13 01:07:41.401780',
                          'Leonardo'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          8,
                          'pbkdf2_sha256$600000$RAHmmgBMmVe48zQwgtuLpN$NBQJWxA2eFr+8pylrgmpChj1cDC4QSLAQPwXYlDP2kk=',
                          NULL,
                          0,
                          'albertocastillo@gmail.com',
                          'Castillo',
                          'albertocastillo@gmail.com',
                          0,
                          1,
                          '2023-12-13 03:55:07.582636',
                          'Alberto'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          9,
                          'pbkdf2_sha256$600000$zmB6kMY2qJq4HTcmHU8dAD$7FMvA9sQtiOlwz9tV53+uabXw4Wdr397qi5+E/vhGSU=',
                          NULL,
                          0,
                          'PEPETAPIA@GMAIL.COM',
                          'TAPIA',
                          'PEPETAPIA@GMAIL.COM',
                          0,
                          1,
                          '2023-12-13 03:56:21.768466',
                          'PEPE'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          10,
                          'pbkdf2_sha256$600000$MtGWv3PxGKf7eyJFHHmUwc$fyo6AeJ8BQX/9FziaoOk3CHvJAXUUW0954EFBxrasMs=',
                          '2023-12-13 03:58:08.955459',
                          0,
                          'usuario@gmail.com',
                          'Perez',
                          'usuario@gmail.com',
                          0,
                          1,
                          '2023-12-13 03:57:46.015438',
                          'Fulanito'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          11,
                          'pbkdf2_sha256$600000$Xk5jI2nwTKfGIGazvFG2im$BVHn52EpPue/mcUmyKnMh7UnWWfn2+/mx2mZAahsnWk=',
                          NULL,
                          0,
                          'alexis@gmail.com',
                          'sanchez',
                          'alexis@gmail.com',
                          0,
                          1,
                          '2023-12-13 05:57:10.900396',
                          'alexis'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          12,
                          'pbkdf2_sha256$600000$4fqktQb09n7Qyb6VF5ZIew$cOMVA8zaO3RovRBMWhGjS6RcH5+NadIoufxksWw++h4=',
                          '2023-12-13 06:10:29.360390',
                          0,
                          'arturovidal@gmail.com',
                          'Vidal',
                          'arturovidal@gmail.com',
                          0,
                          1,
                          '2023-12-13 06:10:11.863348',
                          'Arturo'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          13,
                          'pbkdf2_sha256$600000$Jkrc97M6h0mvZb7ZpzK2e4$3SZto8vVM+3AVj87N7E7DZRmOSYjDSnaxU7hV52fRwE=',
                          '2023-12-13 09:03:18.708721',
                          0,
                          'claudiobravo@gmail.com',
                          'Bravo',
                          'claudiobravo@gmail.com',
                          0,
                          1,
                          '2023-12-13 06:35:49',
                          'Claudio'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          14,
                          'pbkdf2_sha256$600000$HNThQyfYygthTidxFbVxcp$foLvcIGyPS+xulwb96/1mHSkXhKxDvwN0XdrQsWx8V8=',
                          NULL,
                          0,
                          'erickpulgar@gmail.com',
                          'Pulgar',
                          'erickpulgar@gmail.com',
                          0,
                          1,
                          '2023-12-13 06:50:59.171484',
                          'Erick'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          15,
                          'pbkdf2_sha256$600000$hRHiEq5qCC3hldvyTGLL4l$w0k9mlesbfRL2EDP9blDXoPxwhuoMCVCyxJk3WBmTCk=',
                          '2023-12-13 08:08:30.144380',
                          0,
                          'florenciaflores@gmail.com',
                          'Flores',
                          'florenciaflores@gmail.com',
                          0,
                          1,
                          '2023-12-13 07:11:27.035789',
                          'Florencia'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          16,
                          'pbkdf2_sha256$600000$j6VF4OpykGDNyRq3GhEgbb$z5Zia/fCS8NkMjA2UQ1ciPIGkQ0Vm/Nshk2vNsm49kU=',
                          NULL,
                          0,
                          'tomasferrada@gmail.com',
                          'Ferrada',
                          'tomasferrada@gmail.com',
                          0,
                          1,
                          '2023-12-13 07:12:56.712808',
                          'Tomas'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          17,
                          'pbkdf2_sha256$600000$wPKtZwnZAyVa0AO1RzgfdX$uQ7sPpuW/W5SR0L7li/cp5+R8jnB7UxypIVh8463zbE=',
                          NULL,
                          0,
                          'isabelagutierrez@gmail.com',
                          'Gutierrez',
                          'isabelagutierrez@gmail.com',
                          0,
                          1,
                          '2023-12-13 07:16:12.665683',
                          'Isabela'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          18,
                          'pbkdf2_sha256$600000$PFfrESYL7V4TJNcQI1BRZn$SYPwH8HwRGistA9nMF+2UQ5TylnwoduHoXVlNAL/o5M=',
                          NULL,
                          0,
                          'pablopicasso@gmail.com',
                          'Picasso',
                          'pablopicasso@gmail.com',
                          0,
                          1,
                          '2023-12-13 07:19:44.834318',
                          'Pablo'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          19,
                          'pbkdf2_sha256$600000$Fwq9UTp7z2w06MHt9CtfQ0$ih3Oh/4hOPek0UXquJZyh/j9tXmN1VuYY/F/k053hR0=',
                          '2023-12-13 08:33:11.260986',
                          0,
                          'felipegonzalez@gmail.com',
                          'Gonzalez',
                          'felipegonzalez@gmail.com',
                          0,
                          1,
                          '2023-12-13 08:32:55.317566',
                          'Felipe'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          20,
                          'pbkdf2_sha256$600000$Re1sAai3hCSOAH4vZjdG8g$vFMWS5YrYRUhrchz4vWXyN8m/xV0W3qJJtQ+838QH+w=',
                          '2023-12-13 08:43:31.918993',
                          0,
                          'pedroperez@gmail.com',
                          'Perez',
                          'pedroperez@gmail.com',
                          0,
                          1,
                          '2023-12-13 08:43:22.986313',
                          'Pedro'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          21,
                          'pbkdf2_sha256$600000$KA3tiky8NX4PcU2wuqpQld$g6p5oi2p3jbcnhmbcaYPnHF7AjsMUXOY9Mo/bprNlLQ=',
                          '2023-12-13 08:56:02.807728',
                          0,
                          'francisco@gmail.com',
                          'villarreal',
                          'francisco@gmail.com',
                          0,
                          1,
                          '2023-12-13 08:54:39.960605',
                          'francisco'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          22,
                          'pbkdf2_sha256$600000$IRtPTwPzy1FnLjTFAjP3fy$U8JyV8dRAAmlGiTzmB6Je1Vmuc5CmPVXUpGPk/I33Sg=',
                          '2023-12-13 08:57:50.805955',
                          0,
                          'testing@gmail.com',
                          'testing 2',
                          'testing@gmail.com',
                          0,
                          1,
                          '2023-12-13 08:57:44.593294',
                          'testing'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          23,
                          'pbkdf2_sha256$600000$aL1PNOelxDdHZRxWbDPFLm$x6sTao3ht+oqxoBnBNSCxwx8cAeD9udXdCQR0OrchjM=',
                          NULL,
                          0,
                          'herbertcolan@gmail.com',
                          'Castillo',
                          'herbertcolan@gmail.com',
                          0,
                          1,
                          '2023-12-13 09:14:43.262059',
                          'Herbert'
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          last_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                      )
                      VALUES (
                          25,
                          'pbkdf2_sha256$600000$YpbBsGtKDzdsa679V0LHuQ$NK1AULJd1gwC58VQNtcMYmnipBcIFpf1MN6jVOUHmcM=',
                          '2023-12-13 09:55:32.241073',
                          0,
                          'jefe@gmail.com',
                          'jefe',
                          'jefe@gmail.com',
                          0,
                          1,
                          '2023-12-13 09:55:16.118634',
                          'jefe'
                      );


-- Table: auth_user_groups
DROP TABLE IF EXISTS auth_user_groups;

CREATE TABLE auth_user_groups (
    id       INTEGER NOT NULL
                     PRIMARY KEY AUTOINCREMENT,
    user_id  INTEGER NOT NULL
                     REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    group_id INTEGER NOT NULL
                     REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 2,
                                 12,
                                 3
                             );

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 3,
                                 13,
                                 2
                             );

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 4,
                                 14,
                                 3
                             );

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 5,
                                 15,
                                 3
                             );

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 6,
                                 16,
                                 3
                             );

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 7,
                                 17,
                                 3
                             );

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 8,
                                 18,
                                 3
                             );

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 9,
                                 19,
                                 3
                             );

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 10,
                                 20,
                                 3
                             );

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 11,
                                 21,
                                 3
                             );

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 12,
                                 22,
                                 3
                             );

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 13,
                                 23,
                                 1
                             );

INSERT INTO auth_user_groups (
                                 id,
                                 user_id,
                                 group_id
                             )
                             VALUES (
                                 15,
                                 25,
                                 1
                             );


-- Table: auth_user_user_permissions
DROP TABLE IF EXISTS auth_user_user_permissions;

CREATE TABLE auth_user_user_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id       INTEGER NOT NULL
                          REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: django_admin_log
DROP TABLE IF EXISTS django_admin_log;

CREATE TABLE django_admin_log (
    id              INTEGER             NOT NULL
                                        PRIMARY KEY AUTOINCREMENT,
    object_id       TEXT,
    object_repr     VARCHAR (200)       NOT NULL,
    action_flag     [SMALLINT UNSIGNED] NOT NULL
                                        CHECK ("action_flag" >= 0),
    change_message  TEXT                NOT NULL,
    content_type_id INTEGER
                                        REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    user_id         INTEGER             NOT NULL
                                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    action_time     DATETIME            NOT NULL
);

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 1,
                                 '1',
                                 'Tio Nacho, tionacho@gmail.com, pedro 120, 34254324',
                                 1,
                                 '[{"added": {}}]',
                                 10,
                                 1,
                                 '2023-11-29 01:22:24.969442'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 2,
                                 '1',
                                 'shampoo, 3000, 20',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-11-29 01:22:29.692545'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 3,
                                 '2',
                                 'aa, 12321, 132',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-11-29 01:57:20.628859'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 4,
                                 '1',
                                 'shampoo, 3000, 20',
                                 2,
                                 '[{"changed": {"fields": ["Imagen"]}}]',
                                 14,
                                 1,
                                 '2023-11-29 02:28:36.638099'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 5,
                                 '1',
                                 'shampoo, 3000, 20',
                                 2,
                                 '[]',
                                 14,
                                 1,
                                 '2023-11-29 02:31:40.502144'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 6,
                                 '2',
                                 'aa, 12321, 132',
                                 2,
                                 '[{"changed": {"fields": ["Imagen"]}}]',
                                 14,
                                 1,
                                 '2023-11-29 02:31:46.012186'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 7,
                                 '2',
                                 'shampoo tio nacho, 12321, 132',
                                 2,
                                 '[{"changed": {"fields": ["Nombre"]}}]',
                                 14,
                                 1,
                                 '2023-11-29 02:32:01.314524'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 8,
                                 '2',
                                 'solopelo, sfjklsjflk@gmail.com, washington 234, 3425432423',
                                 1,
                                 '[{"added": {}}]',
                                 10,
                                 1,
                                 '2023-11-29 03:14:36.824508'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 9,
                                 '3',
                                 'Nishman Cera Pasta Mate M1 100, 10, 10',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-11-29 03:15:10.311477'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 10,
                                 '3',
                                 'Nishman Cera Pasta Mate M1 100, 10000, 10',
                                 2,
                                 '[{"changed": {"fields": ["Precio venta"]}}]',
                                 14,
                                 1,
                                 '2023-11-29 03:15:30.459562'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 11,
                                 '4',
                                 'Nish-man Cera Spider Wax 150ml, 10000, 20',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-11-29 03:17:17.146957'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 12,
                                 '5',
                                 'Polvo Texturizador Capilar, 8990, 7',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-11-29 03:19:11.575490'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 13,
                                 '6',
                                 'Polvo Texturizador, 7990, 1',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-11-29 03:20:51.969150'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 14,
                                 '7',
                                 'Cera Buffalo Fiber 150 Ml Cera, 5700, 4',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-11-29 03:21:32.018390'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 15,
                                 '7',
                                 'Cera Buffalo Fiber 150 Ml Cera, 5700, 4',
                                 2,
                                 '[{"changed": {"fields": ["Descripcion"]}}]',
                                 14,
                                 1,
                                 '2023-11-29 03:23:34.989058'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 16,
                                 '1',
                                 'Empleado',
                                 1,
                                 '[{"added": {}}]',
                                 3,
                                 1,
                                 '2023-12-03 18:38:46.007974'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 17,
                                 '4',
                                 'pipevilla@gmail.com, pipevilla@gmail.com, nacimiento: 2003-11-29, contrato desde:2023-11-14',
                                 1,
                                 '[{"added": {}}]',
                                 13,
                                 1,
                                 '2023-12-03 18:40:54.035137'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 18,
                                 '1',
                                 'Corte Varon, 7000, 0:01:00',
                                 1,
                                 '[{"added": {}}]',
                                 11,
                                 1,
                                 '2023-12-03 18:41:10.306020'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 19,
                                 '2',
                                 'Pedicure, 5644, 0:01:00',
                                 1,
                                 '[{"added": {}}]',
                                 11,
                                 1,
                                 '2023-12-04 19:16:56.462554'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 20,
                                 '3',
                                 'Manicure, 5500, 0:01:00',
                                 1,
                                 '[{"added": {}}]',
                                 11,
                                 1,
                                 '2023-12-06 01:49:58.071126'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 21,
                                 '4',
                                 'Corte Dama, 20000, 0:01:00',
                                 1,
                                 '[{"added": {}}]',
                                 11,
                                 1,
                                 '2023-12-06 01:50:30.497483'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 22,
                                 '5',
                                 'Teñido de pelo, 12930, 0:01:00',
                                 1,
                                 '[{"added": {}}]',
                                 11,
                                 1,
                                 '2023-12-06 01:50:59.667825'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 23,
                                 '6',
                                 'Pestañas, 4500, 0:00:30',
                                 1,
                                 '[{"added": {}}]',
                                 11,
                                 1,
                                 '2023-12-06 01:51:33.061575'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 24,
                                 '7',
                                 'Peinado Mujer, 13000, 0:00:45',
                                 1,
                                 '[{"added": {}}]',
                                 11,
                                 1,
                                 '2023-12-06 01:52:47.378585'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 25,
                                 '8',
                                 'Peinado Hombre, 10000, 0:00:05',
                                 1,
                                 '[{"added": {}}]',
                                 11,
                                 1,
                                 '2023-12-06 01:53:13.930934'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 26,
                                 '9',
                                 'Depilacion, 20000, 0:02:00',
                                 1,
                                 '[{"added": {}}]',
                                 11,
                                 1,
                                 '2023-12-06 01:53:34.212325'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 27,
                                 '4',
                                 'pipevilla@gmail.com',
                                 2,
                                 '[{"changed": {"fields": ["Staff status", "User permissions"]}}]',
                                 4,
                                 1,
                                 '2023-12-06 04:02:27.939659'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 28,
                                 '8',
                                 'Acondicionador, 3000, 50',
                                 2,
                                 '[{"changed": {"fields": ["Imagen"]}}]',
                                 14,
                                 1,
                                 '2023-12-12 23:31:10.591027'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 29,
                                 '1',
                                 'solopelo, solopelo@gmail.com, Brown Norte 911, 959959922',
                                 1,
                                 '[{"added": {}}]',
                                 10,
                                 1,
                                 '2023-12-13 06:16:09.089589'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 30,
                                 '1',
                                 'Shampoo Natural Tio Nacho, 6500, 20',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-12-13 06:16:22.256841'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 31,
                                 '2',
                                 'Shampoo Natural Tio Nacho V2, 7500, 5',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-12-13 06:18:02.063273'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 32,
                                 '3',
                                 'Nishman Cera Pasta Mate M1 100, 2500, 5',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-12-13 06:18:35.329929'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 33,
                                 '4',
                                 'Nishman Cera Extra Brillosa, 9000, 2',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-12-13 06:19:36.666267'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 34,
                                 '5',
                                 'Polvo Texturizador, 6000, 7',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-12-13 06:20:07.795315'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 35,
                                 '6',
                                 'Cera Buffalo Fiber 150 Ml Cera, 5000, 10',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-12-13 06:20:34.939524'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 36,
                                 '7',
                                 'Producto para el cabello, 3000, 5',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-12-13 06:22:20.965966'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 37,
                                 '8',
                                 'Acondicionador Generico, 5600, 10',
                                 1,
                                 '[{"added": {}}]',
                                 14,
                                 1,
                                 '2023-12-13 06:23:19.053776'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 38,
                                 '6',
                                 'aaa@gmail.com',
                                 3,
                                 '',
                                 4,
                                 1,
                                 '2023-12-13 06:30:28.543485'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 39,
                                 '4',
                                 'pipevilla@gmail.com',
                                 3,
                                 '',
                                 4,
                                 1,
                                 '2023-12-13 06:30:43.824930'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 40,
                                 '3',
                                 'hola',
                                 3,
                                 '',
                                 4,
                                 1,
                                 '2023-12-13 06:30:55.074399'
                             );

INSERT INTO django_admin_log (
                                 id,
                                 object_id,
                                 object_repr,
                                 action_flag,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_time
                             )
                             VALUES (
                                 41,
                                 '13',
                                 'claudiobravo@gmail.com, claudiobravo@gmail.com, nacimiento: 2023-08-09, contrato desde:2023-12-12',
                                 2,
                                 '[{"changed": {"fields": ["Contrase\u00f1a"]}}]',
                                 13,
                                 1,
                                 '2023-12-13 08:06:06.867495'
                             );


-- Table: django_content_type
DROP TABLE IF EXISTS django_content_type;

CREATE TABLE django_content_type (
    id        INTEGER       NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    app_label VARCHAR (100) NOT NULL,
    model     VARCHAR (100) NOT NULL
);

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    1,
                                    'admin',
                                    'logentry'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    2,
                                    'auth',
                                    'permission'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    3,
                                    'auth',
                                    'group'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    4,
                                    'auth',
                                    'user'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    5,
                                    'contenttypes',
                                    'contenttype'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    6,
                                    'sessions',
                                    'session'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    7,
                                    'punto_venta',
                                    'boleta'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    8,
                                    'punto_venta',
                                    'factura'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    9,
                                    'punto_venta',
                                    'persona'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    10,
                                    'punto_venta',
                                    'proveedor'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    11,
                                    'punto_venta',
                                    'servicio'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    12,
                                    'punto_venta',
                                    'cliente'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    13,
                                    'punto_venta',
                                    'empleado'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    14,
                                    'punto_venta',
                                    'producto'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    15,
                                    'punto_venta',
                                    'factura_detalle'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    16,
                                    'punto_venta',
                                    'boleta_servicio'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    17,
                                    'punto_venta',
                                    'boleta_producto'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    18,
                                    'punto_venta',
                                    'cita'
                                );


-- Table: django_migrations
DROP TABLE IF EXISTS django_migrations;

CREATE TABLE django_migrations (
    id      INTEGER       NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    app     VARCHAR (255) NOT NULL,
    name    VARCHAR (255) NOT NULL,
    applied DATETIME      NOT NULL
);

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  1,
                                  'contenttypes',
                                  '0001_initial',
                                  '2023-11-29 01:20:23.064661'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  2,
                                  'auth',
                                  '0001_initial',
                                  '2023-11-29 01:20:23.101501'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  3,
                                  'admin',
                                  '0001_initial',
                                  '2023-11-29 01:20:23.120035'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  4,
                                  'admin',
                                  '0002_logentry_remove_auto_add',
                                  '2023-11-29 01:20:23.137107'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  5,
                                  'admin',
                                  '0003_logentry_add_action_flag_choices',
                                  '2023-11-29 01:20:23.149180'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  6,
                                  'contenttypes',
                                  '0002_remove_content_type_name',
                                  '2023-11-29 01:20:23.169703'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  7,
                                  'auth',
                                  '0002_alter_permission_name_max_length',
                                  '2023-11-29 01:20:23.188891'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  8,
                                  'auth',
                                  '0003_alter_user_email_max_length',
                                  '2023-11-29 01:20:23.207423'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  9,
                                  'auth',
                                  '0004_alter_user_username_opts',
                                  '2023-11-29 01:20:23.224532'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  10,
                                  'auth',
                                  '0005_alter_user_last_login_null',
                                  '2023-11-29 01:20:23.237550'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  11,
                                  'auth',
                                  '0006_require_contenttypes_0002',
                                  '2023-11-29 01:20:23.248637'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  12,
                                  'auth',
                                  '0007_alter_validators_add_error_messages',
                                  '2023-11-29 01:20:23.259164'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  13,
                                  'auth',
                                  '0008_alter_user_username_max_length',
                                  '2023-11-29 01:20:23.274235'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  14,
                                  'auth',
                                  '0009_alter_user_last_name_max_length',
                                  '2023-11-29 01:20:23.292926'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  15,
                                  'auth',
                                  '0010_alter_group_name_max_length',
                                  '2023-11-29 01:20:23.310015'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  16,
                                  'auth',
                                  '0011_update_proxy_permissions',
                                  '2023-11-29 01:20:23.323054'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  17,
                                  'auth',
                                  '0012_alter_user_first_name_max_length',
                                  '2023-11-29 01:20:23.337602'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  19,
                                  'punto_venta',
                                  '0002_alter_servicio_tiempo',
                                  '2023-11-29 01:20:23.485343'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  20,
                                  'punto_venta',
                                  '0003_producto_descripcion',
                                  '2023-11-29 01:20:23.506607'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  21,
                                  'sessions',
                                  '0001_initial',
                                  '2023-11-29 01:20:23.530582'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  22,
                                  'punto_venta',
                                  '0004_producto_imagen_alter_boleta_monto_iva_and_more',
                                  '2023-11-29 02:14:42.438715'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  23,
                                  'punto_venta',
                                  '0004_alter_boleta_monto_iva_alter_boleta_monto_neto_and_more',
                                  '2023-12-03 18:33:34.084638'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  24,
                                  'punto_venta',
                                  '0005_merge_20231129_0059',
                                  '2023-12-03 18:33:34.104997'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  25,
                                  'punto_venta',
                                  '0006_alter_producto_descripcion',
                                  '2023-12-03 18:33:34.126797'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  26,
                                  'punto_venta',
                                  '0007_persona_contrasena_persona_correo_electronico_and_more',
                                  '2023-12-03 18:33:34.176894'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  27,
                                  'punto_venta',
                                  '0001_initial',
                                  '2023-12-13 05:42:49.282856'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  28,
                                  'punto_venta',
                                  '0002_alter_persona_correo_electronico',
                                  '2023-12-13 05:42:49.299358'
                              );


-- Table: punto_venta_boleta
DROP TABLE IF EXISTS punto_venta_boleta;

CREATE TABLE punto_venta_boleta (
    id                 INTEGER            NOT NULL
                                          PRIMARY KEY AUTOINCREMENT,
    fecha_modificacion DATETIME           NOT NULL,
    fecha_creacion     DATETIME           NOT NULL,
    tipo_de_pago       VARCHAR (25)       NOT NULL,
    monto_total        [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_total" >= 0),
    monto_neto         [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_neto" >= 0),
    monto_iva          [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_iva" >= 0),
    cliente_id         INTEGER
                                          REFERENCES punto_venta_cliente (persona_ptr_id) DEFERRABLE INITIALLY DEFERRED,
    empleado_id        INTEGER
                                          REFERENCES punto_venta_empleado (persona_ptr_id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO punto_venta_boleta (
                                   id,
                                   fecha_modificacion,
                                   fecha_creacion,
                                   tipo_de_pago,
                                   monto_total,
                                   monto_neto,
                                   monto_iva,
                                   cliente_id,
                                   empleado_id
                               )
                               VALUES (
                                   1,
                                   '2023-12-13 08:35:54.285360',
                                   '2023-12-13 08:35:54.229364',
                                   'Efectivo',
                                   38000,
                                   31931,
                                   6066,
                                   11,
                                   13
                               );

INSERT INTO punto_venta_boleta (
                                   id,
                                   fecha_modificacion,
                                   fecha_creacion,
                                   tipo_de_pago,
                                   monto_total,
                                   monto_neto,
                                   monto_iva,
                                   cliente_id,
                                   empleado_id
                               )
                               VALUES (
                                   2,
                                   '2023-12-13 08:44:42.077682',
                                   '2023-12-13 08:44:42.031213',
                                   'Efectivo',
                                   18000,
                                   15125,
                                   2873,
                                   11,
                                   13
                               );

INSERT INTO punto_venta_boleta (
                                   id,
                                   fecha_modificacion,
                                   fecha_creacion,
                                   tipo_de_pago,
                                   monto_total,
                                   monto_neto,
                                   monto_iva,
                                   cliente_id,
                                   empleado_id
                               )
                               VALUES (
                                   3,
                                   '2023-12-13 09:03:46.901917',
                                   '2023-12-13 09:03:46.864715',
                                   'Transferencia bancaria',
                                   14500,
                                   12184,
                                   2314,
                                   12,
                                   13
                               );


-- Table: punto_venta_boleta_producto
DROP TABLE IF EXISTS punto_venta_boleta_producto;

CREATE TABLE punto_venta_boleta_producto (
    id                 INTEGER            NOT NULL
                                          PRIMARY KEY AUTOINCREMENT,
    fecha_modificacion DATETIME           NOT NULL,
    fecha_creacion     DATETIME           NOT NULL,
    cantidad           [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("cantidad" >= 0),
    monto_unidad       [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_unidad" >= 0),
    monto_neto         [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_neto" >= 0),
    monto_iva          [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_iva" >= 0),
    monto_total        [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_total" >= 0),
    boleta_id          BIGINT             NOT NULL
                                          REFERENCES punto_venta_boleta (id) DEFERRABLE INITIALLY DEFERRED,
    producto_id        BIGINT
                                          REFERENCES punto_venta_producto (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO punto_venta_boleta_producto (
                                            id,
                                            fecha_modificacion,
                                            fecha_creacion,
                                            cantidad,
                                            monto_unidad,
                                            monto_neto,
                                            monto_iva,
                                            monto_total,
                                            boleta_id,
                                            producto_id
                                        )
                                        VALUES (
                                            1,
                                            '2023-12-13 08:35:54.239273',
                                            '2023-12-13 08:35:54.239273',
                                            1,
                                            5000,
                                            4201,
                                            798,
                                            5000,
                                            1,
                                            6
                                        );

INSERT INTO punto_venta_boleta_producto (
                                            id,
                                            fecha_modificacion,
                                            fecha_creacion,
                                            cantidad,
                                            monto_unidad,
                                            monto_neto,
                                            monto_iva,
                                            monto_total,
                                            boleta_id,
                                            producto_id
                                        )
                                        VALUES (
                                            2,
                                            '2023-12-13 08:44:42.047774',
                                            '2023-12-13 08:44:42.047774',
                                            1,
                                            5000,
                                            4201,
                                            798,
                                            5000,
                                            2,
                                            6
                                        );

INSERT INTO punto_venta_boleta_producto (
                                            id,
                                            fecha_modificacion,
                                            fecha_creacion,
                                            cantidad,
                                            monto_unidad,
                                            monto_neto,
                                            monto_iva,
                                            monto_total,
                                            boleta_id,
                                            producto_id
                                        )
                                        VALUES (
                                            3,
                                            '2023-12-13 09:03:46.875270',
                                            '2023-12-13 09:03:46.875270',
                                            1,
                                            2500,
                                            2100,
                                            399,
                                            2500,
                                            3,
                                            3
                                        );


-- Table: punto_venta_boleta_servicio
DROP TABLE IF EXISTS punto_venta_boleta_servicio;

CREATE TABLE punto_venta_boleta_servicio (
    id                 INTEGER            NOT NULL
                                          PRIMARY KEY AUTOINCREMENT,
    fecha_modificacion DATETIME           NOT NULL,
    fecha_creacion     DATETIME           NOT NULL,
    cantidad           [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("cantidad" >= 0),
    monto_unidad       [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_unidad" >= 0),
    monto_total        [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_total" >= 0),
    monto_iva          [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_iva" >= 0),
    monto_neto         [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_neto" >= 0),
    boleta_id          BIGINT             NOT NULL
                                          REFERENCES punto_venta_boleta (id) DEFERRABLE INITIALLY DEFERRED,
    servicio_id        BIGINT
                                          REFERENCES punto_venta_servicio (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO punto_venta_boleta_servicio (
                                            id,
                                            fecha_modificacion,
                                            fecha_creacion,
                                            cantidad,
                                            monto_unidad,
                                            monto_total,
                                            monto_iva,
                                            monto_neto,
                                            boleta_id,
                                            servicio_id
                                        )
                                        VALUES (
                                            1,
                                            '2023-12-13 08:35:54.257738',
                                            '2023-12-13 08:35:54.257738',
                                            1,
                                            13000,
                                            13000,
                                            2075,
                                            10924,
                                            1,
                                            1
                                        );

INSERT INTO punto_venta_boleta_servicio (
                                            id,
                                            fecha_modificacion,
                                            fecha_creacion,
                                            cantidad,
                                            monto_unidad,
                                            monto_total,
                                            monto_iva,
                                            monto_neto,
                                            boleta_id,
                                            servicio_id
                                        )
                                        VALUES (
                                            2,
                                            '2023-12-13 08:35:54.275767',
                                            '2023-12-13 08:35:54.275767',
                                            1,
                                            20000,
                                            20000,
                                            3193,
                                            16806,
                                            1,
                                            5
                                        );

INSERT INTO punto_venta_boleta_servicio (
                                            id,
                                            fecha_modificacion,
                                            fecha_creacion,
                                            cantidad,
                                            monto_unidad,
                                            monto_total,
                                            monto_iva,
                                            monto_neto,
                                            boleta_id,
                                            servicio_id
                                        )
                                        VALUES (
                                            3,
                                            '2023-12-13 08:44:42.067234',
                                            '2023-12-13 08:44:42.067234',
                                            1,
                                            13000,
                                            13000,
                                            2075,
                                            10924,
                                            2,
                                            1
                                        );

INSERT INTO punto_venta_boleta_servicio (
                                            id,
                                            fecha_modificacion,
                                            fecha_creacion,
                                            cantidad,
                                            monto_unidad,
                                            monto_total,
                                            monto_iva,
                                            monto_neto,
                                            boleta_id,
                                            servicio_id
                                        )
                                        VALUES (
                                            4,
                                            '2023-12-13 09:03:46.892408',
                                            '2023-12-13 09:03:46.892408',
                                            1,
                                            12000,
                                            12000,
                                            1915,
                                            10084,
                                            3,
                                            6
                                        );


-- Table: punto_venta_cita
DROP TABLE IF EXISTS punto_venta_cita;

CREATE TABLE punto_venta_cita (
    id          INTEGER NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    fecha       DATE    NOT NULL,
    hora        TIME    NOT NULL,
    servicio_id BIGINT  NOT NULL
                        REFERENCES punto_venta_servicio (id) DEFERRABLE INITIALLY DEFERRED,
    cliente_id  INTEGER
                        REFERENCES punto_venta_cliente (persona_ptr_id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO punto_venta_cita (
                                 id,
                                 fecha,
                                 hora,
                                 servicio_id,
                                 cliente_id
                             )
                             VALUES (
                                 1,
                                 '2023-12-01',
                                 '17:30:00',
                                 3,
                                 15
                             );

INSERT INTO punto_venta_cita (
                                 id,
                                 fecha,
                                 hora,
                                 servicio_id,
                                 cliente_id
                             )
                             VALUES (
                                 2,
                                 '2023-12-24',
                                 '17:30:00',
                                 2,
                                 15
                             );

INSERT INTO punto_venta_cita (
                                 id,
                                 fecha,
                                 hora,
                                 servicio_id,
                                 cliente_id
                             )
                             VALUES (
                                 3,
                                 '2024-01-01',
                                 '13:30:00',
                                 1,
                                 19
                             );

INSERT INTO punto_venta_cita (
                                 id,
                                 fecha,
                                 hora,
                                 servicio_id,
                                 cliente_id
                             )
                             VALUES (
                                 4,
                                 '2024-02-02',
                                 '13:30:00',
                                 1,
                                 20
                             );

INSERT INTO punto_venta_cita (
                                 id,
                                 fecha,
                                 hora,
                                 servicio_id,
                                 cliente_id
                             )
                             VALUES (
                                 5,
                                 '2024-01-01',
                                 '17:30:00',
                                 4,
                                 22
                             );

INSERT INTO punto_venta_cita (
                                 id,
                                 fecha,
                                 hora,
                                 servicio_id,
                                 cliente_id
                             )
                             VALUES (
                                 6,
                                 '2024-01-05',
                                 '17:30:00',
                                 1,
                                 22
                             );


-- Table: punto_venta_cliente
DROP TABLE IF EXISTS punto_venta_cliente;

CREATE TABLE punto_venta_cliente (
    persona_ptr_id INTEGER NOT NULL
                         PRIMARY KEY
                         REFERENCES punto_venta_persona (user_ptr_id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO punto_venta_cliente (
                                    persona_ptr_id
                                )
                                VALUES (
                                    11
                                );

INSERT INTO punto_venta_cliente (
                                    persona_ptr_id
                                )
                                VALUES (
                                    12
                                );

INSERT INTO punto_venta_cliente (
                                    persona_ptr_id
                                )
                                VALUES (
                                    14
                                );

INSERT INTO punto_venta_cliente (
                                    persona_ptr_id
                                )
                                VALUES (
                                    15
                                );

INSERT INTO punto_venta_cliente (
                                    persona_ptr_id
                                )
                                VALUES (
                                    16
                                );

INSERT INTO punto_venta_cliente (
                                    persona_ptr_id
                                )
                                VALUES (
                                    17
                                );

INSERT INTO punto_venta_cliente (
                                    persona_ptr_id
                                )
                                VALUES (
                                    18
                                );

INSERT INTO punto_venta_cliente (
                                    persona_ptr_id
                                )
                                VALUES (
                                    19
                                );

INSERT INTO punto_venta_cliente (
                                    persona_ptr_id
                                )
                                VALUES (
                                    20
                                );

INSERT INTO punto_venta_cliente (
                                    persona_ptr_id
                                )
                                VALUES (
                                    21
                                );

INSERT INTO punto_venta_cliente (
                                    persona_ptr_id
                                )
                                VALUES (
                                    22
                                );


-- Table: punto_venta_empleado
DROP TABLE IF EXISTS punto_venta_empleado;

CREATE TABLE punto_venta_empleado (
    persona_ptr_id          INTEGER      NOT NULL
                                         PRIMARY KEY
                                         REFERENCES punto_venta_persona (user_ptr_id) DEFERRABLE INITIALLY DEFERRED,
    documento_identificador VARCHAR (30) NOT NULL,
    fecha_contratacion      DATE         NOT NULL,
    afp                     VARCHAR (15) NOT NULL
);

INSERT INTO punto_venta_empleado (
                                     persona_ptr_id,
                                     documento_identificador,
                                     fecha_contratacion,
                                     afp
                                 )
                                 VALUES (
                                     13,
                                     '412342315',
                                     '2023-12-12',
                                     'HABITAT.2'
                                 );

INSERT INTO punto_venta_empleado (
                                     persona_ptr_id,
                                     documento_identificador,
                                     fecha_contratacion,
                                     afp
                                 )
                                 VALUES (
                                     23,
                                     '214530788',
                                     '2023-10-26',
                                     'HABITAT'
                                 );

INSERT INTO punto_venta_empleado (
                                     persona_ptr_id,
                                     documento_identificador,
                                     fecha_contratacion,
                                     afp
                                 )
                                 VALUES (
                                     25,
                                     '13214',
                                     '2023-12-12',
                                     'HABITAT'
                                 );


-- Table: punto_venta_factura
DROP TABLE IF EXISTS punto_venta_factura;

CREATE TABLE punto_venta_factura (
    id                 INTEGER            NOT NULL
                                          PRIMARY KEY AUTOINCREMENT,
    fecha_modificacion DATETIME           NOT NULL,
    fecha_creacion     DATETIME           NOT NULL,
    numero_factura     [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("numero_factura" >= 0),
    tipo_de_pago       VARCHAR (25)       NOT NULL,
    monto_total        [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_total" >= 0),
    monto_neto         [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_neto" >= 0),
    monto_iva          [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_iva" >= 0),
    empleado_id        INTEGER            NOT NULL
                                          REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    proveedor_id       BIGINT
                                          REFERENCES punto_venta_proveedor (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: punto_venta_factura_detalle
DROP TABLE IF EXISTS punto_venta_factura_detalle;

CREATE TABLE punto_venta_factura_detalle (
    id                 INTEGER            NOT NULL
                                          PRIMARY KEY AUTOINCREMENT,
    fecha_modificacion DATETIME           NOT NULL,
    fecha_creacion     DATETIME           NOT NULL,
    numero_factura     INTEGER            NOT NULL,
    cantidad           [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("cantidad" >= 0),
    monto_unidad       [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_unidad" >= 0),
    monto_neto         [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_neto" >= 0),
    monto_iva          [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_iva" >= 0),
    monto_total        [INTEGER UNSIGNED] NOT NULL
                                          CHECK ("monto_total" >= 0),
    factura_id         BIGINT             NOT NULL
                                          REFERENCES punto_venta_factura (id) DEFERRABLE INITIALLY DEFERRED,
    producto_id        BIGINT
                                          REFERENCES punto_venta_producto (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: punto_venta_persona
DROP TABLE IF EXISTS punto_venta_persona;

CREATE TABLE punto_venta_persona (
    user_ptr_id        INTEGER      NOT NULL
                                    PRIMARY KEY
                                    REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    primer_nombre      VARCHAR (20),
    primer_apellido    VARCHAR (20),
    contrasena         VARCHAR (20),
    fecha_nacimiento   DATE         NOT NULL,
    direccion          VARCHAR (20),
    correo_electronico VARCHAR (30) NOT NULL
                                    UNIQUE
);

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    11,
                                    'alexis',
                                    'sanchez',
                                    'pbkdf2_sha256$600000$Xk5jI2nwTKfGIGazvFG2im$BVHn52EpPue/mcUmyKnMh7UnWWfn2+/mx2mZAahsnWk=',
                                    '2003-01-23',
                                    'tocopilla',
                                    'alexis@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    12,
                                    'Arturo',
                                    'Vidal',
                                    'pbkdf2_sha256$600000$4fqktQb09n7Qyb6VF5ZIew$cOMVA8zaO3RovRBMWhGjS6RcH5+NadIoufxksWw++h4=',
                                    '1990-01-19',
                                    'Av Recoleta 121',
                                    'arturovidal@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    13,
                                    'Claudio',
                                    'Bravo',
                                    'pbkdf2_sha256$600000$Jkrc97M6h0mvZb7ZpzK2e4$3SZto8vVM+3AVj87N7E7DZRmOSYjDSnaxU7hV52fRwE=',
                                    '2023-08-09',
                                    'Pascual Baburizza',
                                    'claudiobravo@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    14,
                                    'Erick',
                                    'Pulgar',
                                    'pbkdf2_sha256$600000$HNThQyfYygthTidxFbVxcp$foLvcIGyPS+xulwb96/1mHSkXhKxDvwN0XdrQsWx8V8=',
                                    '2002-11-09',
                                    'La alameda 314',
                                    'erickpulgar@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    15,
                                    'Florencia',
                                    'Flores',
                                    'pbkdf2_sha256$600000$hRHiEq5qCC3hldvyTGLL4l$w0k9mlesbfRL2EDP9blDXoPxwhuoMCVCyxJk3WBmTCk=',
                                    '2023-12-04',
                                    'Vitacura 293',
                                    'florenciaflores@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    16,
                                    'Tomas',
                                    'Ferrada',
                                    'pbkdf2_sha256$600000$j6VF4OpykGDNyRq3GhEgbb$z5Zia/fCS8NkMjA2UQ1ciPIGkQ0Vm/Nshk2vNsm49kU=',
                                    '2023-12-09',
                                    'Nunoa 21',
                                    'tomasferrada@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    17,
                                    'Isabela',
                                    'Gutierrez',
                                    'pbkdf2_sha256$600000$wPKtZwnZAyVa0AO1RzgfdX$uQ7sPpuW/W5SR0L7li/cp5+R8jnB7UxypIVh8463zbE=',
                                    '2023-10-05',
                                    'Salvador 231',
                                    'isabelagutierrez@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    18,
                                    'Pablo',
                                    'Picasso',
                                    'pbkdf2_sha256$600000$PFfrESYL7V4TJNcQI1BRZn$SYPwH8HwRGistA9nMF+2UQ5TylnwoduHoXVlNAL/o5M=',
                                    '2023-08-24',
                                    'España 1221',
                                    'pablopicasso@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    19,
                                    'Felipe',
                                    'Gonzalez',
                                    'pbkdf2_sha256$600000$Fwq9UTp7z2w06MHt9CtfQ0$ih3Oh/4hOPek0UXquJZyh/j9tXmN1VuYY/F/k053hR0=',
                                    '2003-11-28',
                                    'Brown Norte 777',
                                    'felipegonzalez@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    20,
                                    'Pedro',
                                    'Perez',
                                    'pbkdf2_sha256$600000$Re1sAai3hCSOAH4vZjdG8g$vFMWS5YrYRUhrchz4vWXyN8m/xV0W3qJJtQ+838QH+w=',
                                    '2003-01-02',
                                    'Brown Norte 888',
                                    'pedroperez@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    21,
                                    'francisco',
                                    'villarreal',
                                    'pbkdf2_sha256$600000$KA3tiky8NX4PcU2wuqpQld$g6p5oi2p3jbcnhmbcaYPnHF7AjsMUXOY9Mo/bprNlLQ=',
                                    '1999-11-11',
                                    'Testing 123',
                                    'francisco@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    22,
                                    'testing',
                                    'testing 2',
                                    'pbkdf2_sha256$600000$IRtPTwPzy1FnLjTFAjP3fy$U8JyV8dRAAmlGiTzmB6Je1Vmuc5CmPVXUpGPk/I33Sg=',
                                    '1999-09-09',
                                    'testing hola 12345',
                                    'testing@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    23,
                                    'Herbert',
                                    'Castillo',
                                    'pbkdf2_sha256$600000$aL1PNOelxDdHZRxWbDPFLm$x6sTao3ht+oqxoBnBNSCxwx8cAeD9udXdCQR0OrchjM=',
                                    '2006-02-08',
                                    'casa jefe 123',
                                    'herbertcolan@gmail.com'
                                );

INSERT INTO punto_venta_persona (
                                    user_ptr_id,
                                    primer_nombre,
                                    primer_apellido,
                                    contrasena,
                                    fecha_nacimiento,
                                    direccion,
                                    correo_electronico
                                )
                                VALUES (
                                    25,
                                    'jefe',
                                    'jefe',
                                    'pbkdf2_sha256$600000$YpbBsGtKDzdsa679V0LHuQ$NK1AULJd1gwC58VQNtcMYmnipBcIFpf1MN6jVOUHmcM=',
                                    '1997-02-13',
                                    'jefe123',
                                    'jefe@gmail.com'
                                );


-- Table: punto_venta_producto
DROP TABLE IF EXISTS punto_venta_producto;

CREATE TABLE punto_venta_producto (
    id            INTEGER            NOT NULL
                                     PRIMARY KEY AUTOINCREMENT,
    nombre        VARCHAR (30)       NOT NULL,
    descripcion   VARCHAR (300)      NOT NULL,
    categoria     VARCHAR (20)       NOT NULL,
    precio_compra [INTEGER UNSIGNED] NOT NULL
                                     CHECK ("precio_compra" >= 0),
    precio_venta  [INTEGER UNSIGNED] NOT NULL
                                     CHECK ("precio_venta" >= 0),
    stock         [INTEGER UNSIGNED] NOT NULL
                                     CHECK ("stock" >= 0),
    imagen        VARCHAR (100)      NOT NULL,
    proveedor_id  BIGINT             NOT NULL
                                     REFERENCES punto_venta_proveedor (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO punto_venta_producto (
                                     id,
                                     nombre,
                                     descripcion,
                                     categoria,
                                     precio_compra,
                                     precio_venta,
                                     stock,
                                     imagen,
                                     proveedor_id
                                 )
                                 VALUES (
                                     1,
                                     'Shampoo Natural Tio Nacho',
                                     'Shampoo sin sal, hecho a base de miel premium',
                                     'Cabello',
                                     4500,
                                     6500,
                                     20,
                                     'productos/shampootionacho_gfQMERl.webp',
                                     1
                                 );

INSERT INTO punto_venta_producto (
                                     id,
                                     nombre,
                                     descripcion,
                                     categoria,
                                     precio_compra,
                                     precio_venta,
                                     stock,
                                     imagen,
                                     proveedor_id
                                 )
                                 VALUES (
                                     2,
                                     'Shampoo Natural Tio Nacho V2',
                                     'Shampoo sin sal, hecho a base de miel premium',
                                     'Cabello',
                                     3600,
                                     7500,
                                     5,
                                     'productos/tionacho_vVTSV39.jpg',
                                     1
                                 );

INSERT INTO punto_venta_producto (
                                     id,
                                     nombre,
                                     descripcion,
                                     categoria,
                                     precio_compra,
                                     precio_venta,
                                     stock,
                                     imagen,
                                     proveedor_id
                                 )
                                 VALUES (
                                     3,
                                     'Nishman Cera Pasta Mate M1 100',
                                     'Viene en frasco. Es vegano. Funciones: fijador. Está dermatológicamente testeado. Sus ingredientes destacados son: aqua. Es libre de gluten.',
                                     'Cabello',
                                     1000,
                                     2500,
                                     5,
                                     'productos/D_NQ_NP_636462-MLC53103942838_122022-O_lciCkEu.webp',
                                     1
                                 );

INSERT INTO punto_venta_producto (
                                     id,
                                     nombre,
                                     descripcion,
                                     categoria,
                                     precio_compra,
                                     precio_venta,
                                     stock,
                                     imagen,
                                     proveedor_id
                                 )
                                 VALUES (
                                     4,
                                     'Nishman Cera Extra Brillosa',
                                     'Viene en frasco. Es vegano. Funciones: fijador. Está dermatológicamente testeado. Sus ingredientes destacados son: aqua. Es libre de gluten.',
                                     'Cabello',
                                     1000,
                                     9000,
                                     2,
                                     'productos/D_NQ_NP_755494-MLU72565649032_112023-O_fQxfEug.webp',
                                     1
                                 );

INSERT INTO punto_venta_producto (
                                     id,
                                     nombre,
                                     descripcion,
                                     categoria,
                                     precio_compra,
                                     precio_venta,
                                     stock,
                                     imagen,
                                     proveedor_id
                                 )
                                 VALUES (
                                     5,
                                     'Polvo Texturizador',
                                     'Viene en frasco. Es vegano. Funciones: fijador. Está dermatológicamente testeado. Sus ingredientes destacados son: aqua. Es libre de gluten.',
                                     'Cabello',
                                     1000,
                                     6000,
                                     7,
                                     'productos/D_NQ_NP_646611-MLU72635546487_112023-O_wN3A1L7.webp',
                                     1
                                 );

INSERT INTO punto_venta_producto (
                                     id,
                                     nombre,
                                     descripcion,
                                     categoria,
                                     precio_compra,
                                     precio_venta,
                                     stock,
                                     imagen,
                                     proveedor_id
                                 )
                                 VALUES (
                                     6,
                                     'Cera Buffalo Fiber 150 Ml Cera',
                                     'Viene en frasco. Es vegano. Funciones: fijador. Está dermatológicamente testeado. Sus ingredientes destacados son: aqua. Es libre de gluten.',
                                     'Cabello',
                                     1600,
                                     5000,
                                     10,
                                     'productos/D_NQ_NP_700904-MLU70661221349_072023-O_DnowCR2.webp',
                                     1
                                 );

INSERT INTO punto_venta_producto (
                                     id,
                                     nombre,
                                     descripcion,
                                     categoria,
                                     precio_compra,
                                     precio_venta,
                                     stock,
                                     imagen,
                                     proveedor_id
                                 )
                                 VALUES (
                                     7,
                                     'Producto para el cabello',
                                     'Viene en frasco. Es vegano. Funciones: fijador. Está dermatológicamente testeado. Sus ingredientes destacados son: aqua. Es libre de gluten.',
                                     'Cabello',
                                     1500,
                                     3000,
                                     5,
                                     'productos/D_NQ_NP_742534-MLC49334821055_032022-O_d5SLIT6.webp',
                                     1
                                 );

INSERT INTO punto_venta_producto (
                                     id,
                                     nombre,
                                     descripcion,
                                     categoria,
                                     precio_compra,
                                     precio_venta,
                                     stock,
                                     imagen,
                                     proveedor_id
                                 )
                                 VALUES (
                                     8,
                                     'Acondicionador Generico',
                                     'Acondicionador para el cabello',
                                     'Cabello',
                                     2500,
                                     5600,
                                     10,
                                     'productos/acondicionador_V2Q7fqd.jpg',
                                     1
                                 );


-- Table: punto_venta_proveedor
DROP TABLE IF EXISTS punto_venta_proveedor;

CREATE TABLE punto_venta_proveedor (
    id               INTEGER      NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    nombre           VARCHAR (40) NOT NULL,
    direccion        VARCHAR (40) NOT NULL,
    rut_empresa      VARCHAR (30) NOT NULL,
    telefono_celular VARCHAR (30) NOT NULL,
    email            VARCHAR (40) NOT NULL
);

INSERT INTO punto_venta_proveedor (
                                      id,
                                      nombre,
                                      direccion,
                                      rut_empresa,
                                      telefono_celular,
                                      email
                                  )
                                  VALUES (
                                      1,
                                      'solopelo',
                                      'Brown Norte 911',
                                      '212122033',
                                      '959959922',
                                      'solopelo@gmail.com'
                                  );


-- Table: punto_venta_servicio
DROP TABLE IF EXISTS punto_venta_servicio;

CREATE TABLE punto_venta_servicio (
    id          INTEGER            NOT NULL
                                   PRIMARY KEY AUTOINCREMENT,
    nombre      VARCHAR (30)       NOT NULL,
    descripcion VARCHAR (50)       NOT NULL,
    precio      [INTEGER UNSIGNED] NOT NULL
                                   CHECK ("precio" >= 0),
    tiempo      BIGINT             NOT NULL
);

INSERT INTO punto_venta_servicio (
                                     id,
                                     nombre,
                                     descripcion,
                                     precio,
                                     tiempo
                                 )
                                 VALUES (
                                     1,
                                     'Corte Varon',
                                     'Corte de pelo Varón Clásico',
                                     13000,
                                     45000000
                                 );

INSERT INTO punto_venta_servicio (
                                     id,
                                     nombre,
                                     descripcion,
                                     precio,
                                     tiempo
                                 )
                                 VALUES (
                                     2,
                                     'Corte Dama',
                                     'Corte de cabello para damas',
                                     30000,
                                     60000000
                                 );

INSERT INTO punto_venta_servicio (
                                     id,
                                     nombre,
                                     descripcion,
                                     precio,
                                     tiempo
                                 )
                                 VALUES (
                                     3,
                                     'Manicure',
                                     'Cuidado de manos profesional',
                                     15000,
                                     30000000
                                 );

INSERT INTO punto_venta_servicio (
                                     id,
                                     nombre,
                                     descripcion,
                                     precio,
                                     tiempo
                                 )
                                 VALUES (
                                     4,
                                     'Pedicure',
                                     'Cuidado de pies profesional',
                                     15000,
                                     30000000
                                 );

INSERT INTO punto_venta_servicio (
                                     id,
                                     nombre,
                                     descripcion,
                                     precio,
                                     tiempo
                                 )
                                 VALUES (
                                     5,
                                     'Teñida de cabello',
                                     'Pintamos tu cabello',
                                     20000,
                                     120000000
                                 );

INSERT INTO punto_venta_servicio (
                                     id,
                                     nombre,
                                     descripcion,
                                     precio,
                                     tiempo
                                 )
                                 VALUES (
                                     6,
                                     'Pestañas',
                                     'alargamos tus pestañas',
                                     12000,
                                     15000000
                                 );


-- Table: punto_venta_servicio_empleados
DROP TABLE IF EXISTS punto_venta_servicio_empleados;

CREATE TABLE punto_venta_servicio_empleados (
    id          INTEGER NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    servicio_id BIGINT  NOT NULL
                        REFERENCES punto_venta_servicio (id) DEFERRABLE INITIALLY DEFERRED,
    empleado_id INTEGER NOT NULL
                        REFERENCES punto_venta_empleado (persona_ptr_id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: table_name
DROP TABLE IF EXISTS table_name;

CREATE TABLE table_name (
    name                                                 VARCHAR (100),
    table0database                                       VARCHAR (100),
    table0name                                           VARCHAR (100),
    table0ddl__cdata                                     VARCHAR (100),
    table0columnscolumnname                              VARCHAR (100),
    table0columnscolumntype                              VARCHAR (100),
    table0columnscolumnconstraintsconstraint0type        VARCHAR (100),
    table0columnscolumnconstraintsconstraint0definition  VARCHAR (100),
    table0columnscolumnconstraintsconstraint1type        VARCHAR (100),
    table0columnscolumnconstraintsconstraint1definition  VARCHAR (100),
    table0columnscolumnconstraintsconstraint2type        VARCHAR (100),
    table0columnscolumnconstraintsconstraint2definition  VARCHAR (100),
    table0rowsrow0value_column                           DOUBLE,
    table0rowsrow0value__text                            DOUBLE,
    table0rowsrow1value_column                           DOUBLE,
    table0rowsrow1value__text                            DOUBLE,
    table1database                                       VARCHAR (100),
    table1name                                           VARCHAR (100),
    table1ddl__cdata                                     VARCHAR (100),
    table1columnscolumn0name                             VARCHAR (100),
    table1columnscolumn0type                             VARCHAR (100),
    table1columnscolumn0constraintsconstraint0type       VARCHAR (100),
    table1columnscolumn0constraintsconstraint0definition VARCHAR (100),
    table1columnscolumn0constraintsconstraint1type       VARCHAR (100),
    table1columnscolumn0constraintsconstraint1definition VARCHAR (100),
    table1columnscolumn0constraintsconstraint2type       VARCHAR (100),
    table1columnscolumn0constraintsconstraint2definition VARCHAR (100),
    table1columnscolumn1name                             VARCHAR (100),
    table1columnscolumn1type                             VARCHAR (100),
    table1columnscolumn1constraintsconstrainttype        VARCHAR (100),
    table1columnscolumn1constraintsconstraintdefinition  VARCHAR (100),
    table1columnscolumn2name                             VARCHAR (100),
    table1columnscolumn2type                             VARCHAR (100),
    table1columnscolumn2constraintsconstrainttype        VARCHAR (100),
    table1columnscolumn2constraintsconstraintdefinition  VARCHAR (100),
    table1columnscolumn3name                             VARCHAR (100),
    table1columnscolumn3type                             VARCHAR (100),
    table1columnscolumn3constraintsconstrainttype        VARCHAR (100),
    table1columnscolumn3constraintsconstraintdefinition  VARCHAR (100),
    table1rowsrowvalue0_column                           VARCHAR (100),
    table1rowsrowvalue0__text                            VARCHAR (100),
    table1rowsrowvalue1_column                           VARCHAR (100),
    table1rowsrowvalue1__text                            DOUBLE,
    table1rowsrowvalue2_column                           DOUBLE,
    table1rowsrowvalue2__text                            DOUBLE,
    table1rowsrowvalue3_column                           DOUBLE,
    table1rowsrowvalue3__text                            DOUBLE,
    table2database                                       VARCHAR (100),
    table2name                                           DOUBLE,
    table2ddl__cdata                                     VARCHAR (100),
    table2columnscolumn0name                             VARCHAR (100),
    table2columnscolumn0type                             VARCHAR (100),
    table2columnscolumn0constraintsconstraint0type       VARCHAR (100),
    table2columnscolumn0constraintsconstraint0definition VARCHAR (100),
    table2columnscolumn0constraintsconstraint1type       VARCHAR (100),
    table2columnscolumn0constraintsconstraint1definition VARCHAR (100),
    table2columnscolumn0constraintsconstraint2type       VARCHAR (100),
    table2columnscolumn0constraintsconstraint2definition VARCHAR (100),
    table2columnscolumn1name                             VARCHAR (100),
    table2columnscolumn1type                             VARCHAR (100),
    table2columnscolumn1constraintsconstrainttype        VARCHAR (100),
    table2columnscolumn1constraintsconstraintdefinition  VARCHAR (100),
    table2columnscolumn2name                             VARCHAR (100),
    table2columnscolumn2type                             VARCHAR (100),
    table2columnscolumn2constraintsconstrainttype        VARCHAR (100),
    table2columnscolumn2constraintsconstraintdefinition  VARCHAR (100),
    table2columnscolumn3name                             VARCHAR (100),
    table2columnscolumn3type                             VARCHAR (100),
    table2columnscolumn3constraintsconstrainttype        VARCHAR (100),
    table2columnscolumn3constraintsconstraintdefinition  VARCHAR (100),
    table2columnscolumn4name                             VARCHAR (100),
    table2columnscolumn4type                             VARCHAR (100),
    table2columnscolumn4constraintsconstrainttype        VARCHAR (100),
    table2columnscolumn4constraintsconstraintdefinition  VARCHAR (100),
    table2columnscolumn5name                             VARCHAR (100),
    table2columnscolumn5type                             VARCHAR (100),
    table2columnscolumn5constraintsconstrainttype        VARCHAR (100),
    table2columnscolumn5constraintsconstraintdefinition  VARCHAR (100),
    table2columnscolumn6name                             VARCHAR (100),
    table2columnscolumn6type                             VARCHAR (100),
    table2columnscolumn6constraintsconstrainttype        VARCHAR (100),
    table2columnscolumn6constraintsconstraintdefinition  VARCHAR (100),
    table2rowsrow0value0_column                          VARCHAR (100),
    table2rowsrow0value0__text                           VARCHAR (100),
    table2rowsrow0value1_column                          VARCHAR (100),
    table2rowsrow0value1__text                           VARCHAR (100),
    table2rowsrow0value2_column                          VARCHAR (100),
    table2rowsrow0value2__text                           VARCHAR (100),
    table2rowsrow0value3_column                          VARCHAR (100),
    table2rowsrow0value3_null                            VARCHAR (100),
    table2rowsrow0value4_column                          VARCHAR (100),
    table2rowsrow0value4_null                            DOUBLE,
    table2rowsrow0value5_column                          DOUBLE,
    table2rowsrow0value5_null                            DOUBLE,
    table2rowsrow0value6_column                          VARCHAR (100),
    table2rowsrow0value6_null                            DOUBLE,
    table2rowsrow1value0_column                          VARCHAR (100),
    table2rowsrow1value0__text                           DOUBLE,
    table2rowsrow1value1_column                          VARCHAR (100),
    table2rowsrow1value1__text                           DOUBLE,
    table2rowsrow1value2_column                          VARCHAR (100),
    table2rowsrow1value2__text                           DOUBLE,
    table2rowsrow1value3_column                          VARCHAR (100),
    table2rowsrow1value3__text                           DOUBLE,
    table2rowsrow1value4_column                          VARCHAR (100),
    table2rowsrow1value4__text                           DOUBLE,
    table2rowsrow1value5_column                          DOUBLE,
    table2rowsrow1value5__text                           DOUBLE,
    table2rowsrow1value6_column                          VARCHAR (100),
    table2rowsrow1value6__text                           DOUBLE,
    table2rowsrow2value0_column                          VARCHAR (100),
    table2rowsrow2value0__text                           DOUBLE,
    table2rowsrow2value1_column                          VARCHAR (100),
    table2rowsrow2value1__text                           DOUBLE,
    table2rowsrow2value2_column                          VARCHAR (100),
    table2rowsrow2value2__text                           DOUBLE,
    table2rowsrow2value3_column                          VARCHAR (100),
    table2rowsrow2value3__text                           DOUBLE,
    table2rowsrow2value4_column                          VARCHAR (100),
    table2rowsrow2value4__text                           DOUBLE,
    table2rowsrow2value5_column                          DOUBLE,
    table2rowsrow2value5__text                           DOUBLE,
    table2rowsrow2value6_column                          VARCHAR (100),
    table2rowsrow2value6__text                           DOUBLE,
    table3database                                       VARCHAR (100),
    table3name                                           DOUBLE,
    table3ddl__cdata                                     VARCHAR (100),
    table3columnscolumn0name                             DOUBLE,
    table3columnscolumn0type                             VARCHAR (100),
    table3columnscolumn0constraintsconstraint0type       DOUBLE,
    table3columnscolumn0constraintsconstraint0definition VARCHAR (100),
    table3columnscolumn0constraintsconstraint1type       DOUBLE,
    table3columnscolumn0constraintsconstraint1definition VARCHAR (100),
    table3columnscolumn1name                             VARCHAR (100),
    table3columnscolumn1type                             VARCHAR (100),
    table3columnscolumn1constraintsconstrainttype        VARCHAR (100),
    table3columnscolumn1constraintsconstraintdefinition  VARCHAR (100),
    table3columnscolumn2name                             VARCHAR (100),
    table3columnscolumn2type                             VARCHAR (100),
    table3columnscolumn2constraintsconstrainttype        VARCHAR (100),
    table3columnscolumn2constraintsconstraintdefinition  VARCHAR (100),
    table3columnscolumn3name                             VARCHAR (100),
    table3columnscolumn3type                             VARCHAR (100),
    table3columnscolumn3constraintsconstraint0type       VARCHAR (100),
    table3columnscolumn3constraintsconstraint0definition VARCHAR (100),
    table3columnscolumn3constraintsconstraint1type       VARCHAR (100),
    table3columnscolumn3constraintsconstraint1definition VARCHAR (100),
    table3columnscolumn4name                             VARCHAR (100),
    table3columnscolumn4type                             VARCHAR (100),
    table3columnscolumn4constraintsconstraint0type       VARCHAR (100),
    table3columnscolumn4constraintsconstraint0definition VARCHAR (100),
    table3columnscolumn4constraintsconstraint1type       VARCHAR (100),
    table3columnscolumn4constraintsconstraint1definition VARCHAR (100),
    table3columnscolumn5name                             VARCHAR (100),
    table3columnscolumn5type                             VARCHAR (100),
    table3columnscolumn5constraintsconstraint0type       VARCHAR (100),
    table3columnscolumn5constraintsconstraint0definition VARCHAR (100),
    table3columnscolumn5constraintsconstraint1type       VARCHAR (100),
    table3columnscolumn5constraintsconstraint1definition VARCHAR (100),
    table3columnscolumn6name                             VARCHAR (100),
    table3columnscolumn6type                             VARCHAR (100),
    table3columnscolumn6constraintsconstraint0type       VARCHAR (100),
    table3columnscolumn6constraintsconstraint0definition VARCHAR (100),
    table3columnscolumn6constraintsconstraint1type       VARCHAR (100),
    table3columnscolumn6constraintsconstraint1definition VARCHAR (100),
    table3columnscolumn7name                             VARCHAR (100),
    table3columnscolumn7type                             VARCHAR (100),
    table3columnscolumn7constraintsconstrainttype        VARCHAR (100),
    table3columnscolumn7constraintsconstraintdefinition  VARCHAR (100),
    table3columnscolumn8name                             VARCHAR (100),
    table3columnscolumn8type                             VARCHAR (100),
    table3columnscolumn8constraintsconstrainttype        VARCHAR (100),
    table3columnscolumn8constraintsconstraintdefinition  VARCHAR (100),
    table3rowsrow0value0_column                          VARCHAR (100),
    table3rowsrow0value0__text                           VARCHAR (100),
    table3rowsrow0value1_column                          VARCHAR (100),
    table3rowsrow0value1__text                           VARCHAR (100),
    table3rowsrow0value2_column                          VARCHAR (100),
    table3rowsrow0value2__text                           VARCHAR (100),
    table3rowsrow0value3_column                          VARCHAR (100),
    table3rowsrow0value3__text                           VARCHAR (100),
    table3rowsrow0value4_column                          VARCHAR (100),
    table3rowsrow0value4__text                           VARCHAR (100),
    table3rowsrow0value5_column                          VARCHAR (100),
    table3rowsrow0value5__text                           VARCHAR (100),
    table3rowsrow0value6_column                          VARCHAR (100),
    table3rowsrow0value6__text                           VARCHAR (100),
    table3rowsrow0value7_column                          VARCHAR (100),
    table3rowsrow0value7__text                           VARCHAR (100),
    table3rowsrow0value8_column                          VARCHAR (100),
    table3rowsrow0value8__text                           DOUBLE,
    table3rowsrow1value0_column                          DOUBLE,
    table3rowsrow1value0__text                           DOUBLE,
    table3rowsrow1value1_column                          VARCHAR (100),
    table3rowsrow1value1__text                           DOUBLE,
    table3rowsrow1value2_column                          VARCHAR (100),
    table3rowsrow1value2__text                           DOUBLE,
    table3rowsrow1value3_column                          DOUBLE,
    table3rowsrow1value3__text                           DOUBLE,
    table3rowsrow1value4_column                          DOUBLE,
    table3rowsrow1value4__text                           DOUBLE,
    table3rowsrow1value5_column                          DOUBLE,
    table3rowsrow1value5__text                           DOUBLE,
    table3rowsrow1value6_column                          DOUBLE,
    table3rowsrow1value6__text                           DOUBLE,
    table3rowsrow1value7_column                          VARCHAR (100),
    table3rowsrow1value7__text                           DOUBLE,
    table3rowsrow1value8_column                          VARCHAR (100),
    table3rowsrow1value8__text                           DOUBLE,
    table3rowsrow2value0_column                          DOUBLE,
    table3rowsrow2value0__text                           DOUBLE,
    table3rowsrow2value1_column                          VARCHAR (100),
    table3rowsrow2value1__text                           DOUBLE,
    table3rowsrow2value2_column                          VARCHAR (100),
    table3rowsrow2value2__text                           DOUBLE,
    table3rowsrow2value3_column                          DOUBLE,
    table3rowsrow2value3__text                           DOUBLE,
    table3rowsrow2value4_column                          DOUBLE,
    table3rowsrow2value4__text                           DOUBLE,
    table3rowsrow2value5_column                          DOUBLE,
    table3rowsrow2value5__text                           DOUBLE,
    table3rowsrow2value6_column                          DOUBLE,
    table3rowsrow2value6__text                           DOUBLE,
    table3rowsrow2value7_column                          VARCHAR (100),
    table3rowsrow2value7__text                           DOUBLE,
    table3rowsrow2value8_column                          VARCHAR (100),
    table3rowsrow2value8__text                           DOUBLE,
    table3rowsrow3value0_column                          DOUBLE,
    table3rowsrow3value0__text                           DOUBLE,
    table3rowsrow3value1_column                          VARCHAR (100),
    table3rowsrow3value1__text                           DOUBLE,
    table3rowsrow3value2_column                          VARCHAR (100),
    table3rowsrow3value2__text                           DOUBLE,
    table3rowsrow3value3_column                          DOUBLE,
    table3rowsrow3value3__text                           DOUBLE,
    table3rowsrow3value4_column                          DOUBLE,
    table3rowsrow3value4__text                           DOUBLE,
    table3rowsrow3value5_column                          DOUBLE,
    table3rowsrow3value5__text                           DOUBLE,
    table3rowsrow3value6_column                          DOUBLE,
    table3rowsrow3value6__text                           DOUBLE,
    table3rowsrow3value7_column                          VARCHAR (100),
    table3rowsrow3value7__text                           DOUBLE,
    table3rowsrow3value8_column                          VARCHAR (100),
    table3rowsrow3value8__text                           DOUBLE,
    table3rowsrow4value0_column                          DOUBLE,
    table3rowsrow4value0__text                           DOUBLE,
    table3rowsrow4value1_column                          VARCHAR (100),
    table3rowsrow4value1__text                           DOUBLE,
    table3rowsrow4value2_column                          VARCHAR (100),
    table3rowsrow4value2__text                           DOUBLE,
    table3rowsrow4value3_column                          DOUBLE,
    table3rowsrow4value3__text                           DOUBLE,
    table3rowsrow4value4_column                          DOUBLE,
    table3rowsrow4value4__text                           DOUBLE,
    table3rowsrow4value5_column                          DOUBLE,
    table3rowsrow4value5__text                           DOUBLE,
    table3rowsrow4value6_column                          DOUBLE,
    table3rowsrow4value6__text                           DOUBLE,
    table3rowsrow4value7_column                          VARCHAR (100),
    table3rowsrow4value7__text                           DOUBLE,
    table3rowsrow4value8_column                          VARCHAR (100),
    table3rowsrow4value8__text                           DOUBLE,
    table3rowsrow5value0_column                          DOUBLE,
    table3rowsrow5value0__text                           DOUBLE,
    table3rowsrow5value1_column                          VARCHAR (100),
    table3rowsrow5value1__text                           DOUBLE,
    table3rowsrow5value2_column                          VARCHAR (100),
    table3rowsrow5value2__text                           DOUBLE,
    table3rowsrow5value3_column                          DOUBLE,
    table3rowsrow5value3__text                           DOUBLE,
    table3rowsrow5value4_column                          DOUBLE,
    table3rowsrow5value4__text                           DOUBLE,
    table3rowsrow5value5_column                          DOUBLE,
    table3rowsrow5value5__text                           DOUBLE,
    table3rowsrow5value6_column                          DOUBLE,
    table3rowsrow5value6__text                           DOUBLE,
    table3rowsrow5value7_column                          VARCHAR (100),
    table3rowsrow5value7__text                           DOUBLE,
    table3rowsrow5value8_column                          VARCHAR (100),
    table3rowsrow5value8__text                           DOUBLE,
    table3rowsrow6value0_column                          DOUBLE,
    table3rowsrow6value0__text                           DOUBLE,
    table3rowsrow6value1_column                          VARCHAR (100),
    table3rowsrow6value1__text                           DOUBLE,
    table3rowsrow6value2_column                          VARCHAR (100),
    table3rowsrow6value2__text                           DOUBLE,
    table3rowsrow6value3_column                          DOUBLE,
    table3rowsrow6value3__text                           DOUBLE,
    table3rowsrow6value4_column                          DOUBLE,
    table3rowsrow6value4__text                           DOUBLE,
    table3rowsrow6value5_column                          DOUBLE,
    table3rowsrow6value5__text                           DOUBLE,
    table3rowsrow6value6_column                          DOUBLE,
    table3rowsrow6value6__text                           DOUBLE,
    table3rowsrow6value7_column                          VARCHAR (100),
    table3rowsrow6value7__text                           DOUBLE,
    table3rowsrow6value8_column                          VARCHAR (100),
    table3rowsrow6value8__text                           DOUBLE,
    table4database                                       DOUBLE,
    table4name                                           DOUBLE,
    table4ddl__cdata                                     VARCHAR (100),
    table4columnscolumn0name                             DOUBLE,
    table4columnscolumn0type                             VARCHAR (100),
    table4columnscolumn0constraintsconstraint0type       DOUBLE,
    table4columnscolumn0constraintsconstraint0definition DOUBLE,
    table4columnscolumn0constraintsconstraint1type       DOUBLE,
    table4columnscolumn0constraintsconstraint1definition DOUBLE,
    table4columnscolumn1name                             DOUBLE,
    table4columnscolumn1type                             DOUBLE,
    table4columnscolumn1constraintsconstrainttype        DOUBLE,
    table4columnscolumn1constraintsconstraintdefinition  DOUBLE,
    table4columnscolumn2name                             DOUBLE,
    table4columnscolumn2type                             VARCHAR (100),
    table4columnscolumn2constraintsconstrainttype        DOUBLE,
    table4columnscolumn2constraintsconstraintdefinition  VARCHAR (100),
    table4columnscolumn3name                             VARCHAR (100),
    table4columnscolumn3type                             VARCHAR (100),
    table4columnscolumn3constraintsconstrainttype        VARCHAR (100),
    table4columnscolumn3constraintsconstraintdefinition  VARCHAR (100),
    table4columnscolumn4name                             VARCHAR (100),
    table4columnscolumn4type                             VARCHAR (100),
    table4columnscolumn4constraintsconstrainttype        VARCHAR (100),
    table4columnscolumn4constraintsconstraintdefinition  VARCHAR (100),
    table4columnscolumn5name                             VARCHAR (100),
    table4columnscolumn5type                             VARCHAR (100),
    table4columnscolumn5constraintsconstrainttype        VARCHAR (100),
    table4columnscolumn5constraintsconstraintdefinition  VARCHAR (100),
    table4rowsrow0value0_column                          VARCHAR (100),
    table4rowsrow0value0__text                           VARCHAR (100),
    table4rowsrow0value1_column                          VARCHAR (100),
    table4rowsrow0value1__text                           VARCHAR (100),
    table4rowsrow0value2_column                          VARCHAR (100),
    table4rowsrow0value2__text                           VARCHAR (100),
    table4rowsrow0value3_column                          VARCHAR (100),
    table4rowsrow0value3__text                           VARCHAR (100),
    table4rowsrow0value4_column                          VARCHAR (100),
    table4rowsrow0value4__text                           VARCHAR (100),
    table4rowsrow0value5_column                          VARCHAR (100),
    table4rowsrow0value5__text                           VARCHAR (100),
    table4rowsrow1value0_column                          VARCHAR (100),
    table4rowsrow1value0__text                           VARCHAR (100),
    table4rowsrow1value1_column                          VARCHAR (100),
    table4rowsrow1value1__text                           VARCHAR (100),
    table4rowsrow1value2_column                          VARCHAR (100),
    table4rowsrow1value2__text                           VARCHAR (100),
    table4rowsrow1value3_column                          VARCHAR (100),
    table4rowsrow1value3__text                           VARCHAR (100),
    table4rowsrow1value4_column                          VARCHAR (100),
    table4rowsrow1value4__text                           VARCHAR (100),
    table4rowsrow1value5_column                          DOUBLE,
    table4rowsrow1value5__text                           DOUBLE,
    table5database                                       DOUBLE,
    table5name                                           VARCHAR (100),
    table5ddl__cdata                                     DOUBLE,
    table5columnscolumn0name                             VARCHAR (100),
    table5columnscolumn0type                             DOUBLE,
    table5columnscolumn0constraintsconstraint0type       DOUBLE,
    table5columnscolumn0constraintsconstraint0definition DOUBLE,
    table5columnscolumn0constraintsconstraint1type       DOUBLE,
    table5columnscolumn0constraintsconstraint1definition DOUBLE,
    table5columnscolumn1name                             VARCHAR (100),
    table5columnscolumn1type                             DOUBLE,
    table5columnscolumn1constraintsconstrainttype        DOUBLE,
    table5columnscolumn1constraintsconstraintdefinition  DOUBLE,
    table5columnscolumn2name                             VARCHAR (100),
    table5columnscolumn2type                             DOUBLE,
    table5columnscolumn2constraintsconstrainttype        VARCHAR (100),
    table5columnscolumn2constraintsconstraintdefinition  DOUBLE,
    table5columnscolumn3name                             DOUBLE,
    table5columnscolumn3type                             DOUBLE,
    table5columnscolumn3constraintsconstrainttype        DOUBLE,
    table5columnscolumn3constraintsconstraintdefinition  DOUBLE,
    table5columnscolumn4name                             VARCHAR (100),
    table5columnscolumn4type                             VARCHAR (100),
    table5columnscolumn4constraintsconstraint0type       VARCHAR (100),
    table5columnscolumn4constraintsconstraint0definition VARCHAR (100),
    table5columnscolumn4constraintsconstraint1type       VARCHAR (100),
    table5columnscolumn4constraintsconstraint1definition VARCHAR (100),
    table5rowsrow0value0_column                          VARCHAR (100),
    table5rowsrow0value0__text                           VARCHAR (100),
    table5rowsrow0value1_column                          VARCHAR (100),
    table5rowsrow0value1__text                           VARCHAR (100),
    table5rowsrow0value2_column                          VARCHAR (100),
    table5rowsrow0value2__text                           VARCHAR (100),
    table5rowsrow0value3_column                          VARCHAR (100),
    table5rowsrow0value3__text                           VARCHAR (100),
    table5rowsrow0value4_column                          VARCHAR (100),
    table5rowsrow0value4__text                           VARCHAR (100),
    table5rowsrow1value0_column                          VARCHAR (100),
    table5rowsrow1value0__text                           VARCHAR (100),
    table5rowsrow1value1_column                          VARCHAR (100),
    table5rowsrow1value1__text                           VARCHAR (100),
    table5rowsrow1value2_column                          VARCHAR (100),
    table5rowsrow1value2__text                           VARCHAR (100),
    table5rowsrow1value3_column                          VARCHAR (100),
    table5rowsrow1value3__text                           VARCHAR (100),
    table5rowsrow1value4_column                          VARCHAR (100),
    table5rowsrow1value4__text                           VARCHAR (100),
    table5rowsrow2value0_column                          VARCHAR (100),
    table5rowsrow2value0__text                           VARCHAR (100),
    table5rowsrow2value1_column                          VARCHAR (100),
    table5rowsrow2value1__text                           VARCHAR (100),
    table5rowsrow2value2_column                          VARCHAR (100),
    table5rowsrow2value2__text                           VARCHAR (100),
    table5rowsrow2value3_column                          DOUBLE,
    table5rowsrow2value3__text                           DOUBLE,
    table5rowsrow2value4_column                          DOUBLE,
    table5rowsrow2value4__text                           VARCHAR (100),
    table5rowsrow3value0_column                          DOUBLE,
    table5rowsrow3value0__text                           VARCHAR (100),
    table5rowsrow3value1_column                          DOUBLE,
    table5rowsrow3value1__text                           DOUBLE,
    table5rowsrow3value2_column                          DOUBLE,
    table5rowsrow3value2__text                           DOUBLE,
    table5rowsrow3value3_column                          DOUBLE,
    table5rowsrow3value3__text                           DOUBLE,
    table5rowsrow3value4_column                          DOUBLE,
    table5rowsrow3value4__text                           VARCHAR (100),
    table5rowsrow4value0_column                          DOUBLE,
    table5rowsrow4value0__text                           VARCHAR (100),
    table5rowsrow4value1_column                          VARCHAR (100),
    table5rowsrow4value1__text                           DOUBLE,
    table5rowsrow4value2_column                          DOUBLE,
    table5rowsrow4value2__text                           DOUBLE,
    table5rowsrow4value3_column                          DOUBLE,
    table5rowsrow4value3__text                           DOUBLE,
    table5rowsrow4value4_column                          DOUBLE,
    table5rowsrow4value4__text                           DOUBLE,
    table5rowsrow5value0_column                          VARCHAR (100),
    table5rowsrow5value0__text                           DOUBLE,
    table5rowsrow5value1_column                          VARCHAR (100),
    table5rowsrow5value1__text                           DOUBLE,
    table5rowsrow5value2_column                          DOUBLE,
    table5rowsrow5value2__text                           DOUBLE,
    table5rowsrow5value3_column                          DOUBLE,
    table5rowsrow5value3__text                           DOUBLE,
    table5rowsrow5value4_column                          DOUBLE,
    table5rowsrow5value4__text                           DOUBLE,
    table5rowsrow6value0_column                          VARCHAR (100),
    table5rowsrow6value0__text                           DOUBLE,
    table5rowsrow6value1_column                          VARCHAR (100),
    table5rowsrow6value1__text                           DOUBLE,
    table5rowsrow6value2_column                          DOUBLE,
    table5rowsrow6value2__text                           DOUBLE,
    table5rowsrow6value3_column                          DOUBLE,
    table5rowsrow6value3__text                           DOUBLE,
    table5rowsrow6value4_column                          DOUBLE,
    table5rowsrow6value4__text                           DOUBLE,
    table5rowsrow7value0_column                          VARCHAR (100),
    table5rowsrow7value0__text                           DOUBLE,
    table5rowsrow7value1_column                          VARCHAR (100),
    table5rowsrow7value1__text                           DOUBLE,
    table5rowsrow7value2_column                          DOUBLE,
    table5rowsrow7value2__text                           DOUBLE,
    table5rowsrow7value3_column                          DOUBLE,
    table5rowsrow7value3__text                           DOUBLE,
    table5rowsrow7value4_column                          DOUBLE,
    table5rowsrow7value4__text                           DOUBLE,
    table5rowsrow8value0_column                          VARCHAR (100),
    table5rowsrow8value0__text                           DOUBLE,
    table5rowsrow8value1_column                          VARCHAR (100),
    table5rowsrow8value1__text                           DOUBLE,
    table5rowsrow8value2_column                          DOUBLE,
    table5rowsrow8value2__text                           DOUBLE,
    table5rowsrow8value3_column                          DOUBLE,
    table5rowsrow8value3__text                           DOUBLE,
    table5rowsrow8value4_column                          DOUBLE,
    table5rowsrow8value4__text                           DOUBLE,
    table6database                                       VARCHAR (100),
    table6name                                           DOUBLE,
    table6ddl__cdata                                     VARCHAR (100),
    table6columnscolumn0name                             DOUBLE,
    table6columnscolumn0type                             DOUBLE,
    table6columnscolumn0constraintsconstraint0type       DOUBLE,
    table6columnscolumn0constraintsconstraint0definition DOUBLE,
    table6columnscolumn0constraintsconstraint1type       DOUBLE,
    table6columnscolumn0constraintsconstraint1definition DOUBLE,
    table6columnscolumn1name                             DOUBLE,
    table6columnscolumn1type                             VARCHAR (100),
    table6columnscolumn1constraintsconstraint0type       DOUBLE,
    table6columnscolumn1constraintsconstraint0definition VARCHAR (100),
    table6columnscolumn1constraintsconstraint1type       DOUBLE,
    table6columnscolumn1constraintsconstraint1definition DOUBLE,
    table6columnscolumn2name                             DOUBLE,
    table6columnscolumn2type                             DOUBLE,
    table6columnscolumn2constraintsconstraint0type       DOUBLE,
    table6columnscolumn2constraintsconstraint0definition DOUBLE,
    table6columnscolumn2constraintsconstraint1type       DOUBLE,
    table6columnscolumn2constraintsconstraint1definition VARCHAR (100),
    table6rowsrow0value0_column                          DOUBLE,
    table6rowsrow0value0__text                           VARCHAR (100),
    table6rowsrow0value1_column                          DOUBLE,
    table6rowsrow0value1__text                           DOUBLE,
    table6rowsrow0value2_column                          DOUBLE,
    table6rowsrow0value2__text                           DOUBLE,
    table6rowsrow1value0_column                          VARCHAR (100),
    table6rowsrow1value0__text                           VARCHAR (100),
    table6rowsrow1value1_column                          VARCHAR (100),
    table6rowsrow1value1__text                           VARCHAR (100),
    table6rowsrow1value2_column                          VARCHAR (100),
    table6rowsrow1value2__text                           VARCHAR (100),
    table6rowsrow2value0_column                          VARCHAR (100),
    table6rowsrow2value0__text                           VARCHAR (100),
    table6rowsrow2value1_column                          VARCHAR (100),
    table6rowsrow2value1__text                           VARCHAR (100),
    table6rowsrow2value2_column                          VARCHAR (100),
    table6rowsrow2value2__text                           VARCHAR (100),
    table6rowsrow3value0_column                          VARCHAR (100),
    table6rowsrow3value0__text                           VARCHAR (100),
    table6rowsrow3value1_column                          VARCHAR (100),
    table6rowsrow3value1__text                           VARCHAR (100),
    table6rowsrow3value2_column                          VARCHAR (100),
    table6rowsrow3value2__text                           VARCHAR (100),
    table6rowsrow4value0_column                          VARCHAR (100),
    table6rowsrow4value0__text                           VARCHAR (100),
    table6rowsrow4value1_column                          VARCHAR (100),
    table6rowsrow4value1__text                           VARCHAR (100),
    table6rowsrow4value2_column                          VARCHAR (100),
    table6rowsrow4value2__text                           DOUBLE,
    table6rowsrow5value0_column                          DOUBLE,
    table6rowsrow5value0__text                           DOUBLE,
    table6rowsrow5value1_column                          DOUBLE,
    table6rowsrow5value1__text                           DOUBLE,
    table6rowsrow5value2_column                          DOUBLE,
    table6rowsrow5value2__text                           DOUBLE,
    table6rowsrow6value0_column                          DOUBLE,
    table6rowsrow6value0__text                           DOUBLE,
    table6rowsrow6value1_column                          DOUBLE,
    table6rowsrow6value1__text                           DOUBLE,
    table6rowsrow6value2_column                          DOUBLE,
    table6rowsrow6value2__text                           DOUBLE,
    table6rowsrow7value0_column                          DOUBLE,
    table6rowsrow7value0__text                           DOUBLE,
    table6rowsrow7value1_column                          DOUBLE,
    table6rowsrow7value1__text                           DOUBLE,
    table6rowsrow7value2_column                          DOUBLE,
    table6rowsrow7value2__text                           DOUBLE,
    table6rowsrow8value0_column                          DOUBLE,
    table6rowsrow8value0__text                           DOUBLE,
    table6rowsrow8value1_column                          DOUBLE,
    table6rowsrow8value1__text                           DOUBLE,
    table6rowsrow8value2_column                          DOUBLE,
    table6rowsrow8value2__text                           DOUBLE,
    index0database                                       DOUBLE,
    index0name                                           DOUBLE,
    index0ddl__cdata                                     DOUBLE,
    index1database                                       DOUBLE,
    index1name                                           DOUBLE,
    index1ddl__cdata                                     DOUBLE,
    index2database                                       DOUBLE,
    index2name                                           DOUBLE,
    index2ddl__cdata                                     DOUBLE,
    index3database                                       DOUBLE,
    index3name                                           DOUBLE,
    index3unique                                         DOUBLE,
    index3ddl__cdata                                     DOUBLE
);

INSERT INTO table_name (
                           name,
                           table0database,
                           table0name,
                           table0ddl__cdata,
                           table0columnscolumnname,
                           table0columnscolumntype,
                           table0columnscolumnconstraintsconstraint0type,
                           table0columnscolumnconstraintsconstraint0definition,
                           table0columnscolumnconstraintsconstraint1type,
                           table0columnscolumnconstraintsconstraint1definition,
                           table0columnscolumnconstraintsconstraint2type,
                           table0columnscolumnconstraintsconstraint2definition,
                           table0rowsrow0value_column,
                           table0rowsrow0value__text,
                           table0rowsrow1value_column,
                           table0rowsrow1value__text,
                           table1database,
                           table1name,
                           table1ddl__cdata,
                           table1columnscolumn0name,
                           table1columnscolumn0type,
                           table1columnscolumn0constraintsconstraint0type,
                           table1columnscolumn0constraintsconstraint0definition,
                           table1columnscolumn0constraintsconstraint1type,
                           table1columnscolumn0constraintsconstraint1definition,
                           table1columnscolumn0constraintsconstraint2type,
                           table1columnscolumn0constraintsconstraint2definition,
                           table1columnscolumn1name,
                           table1columnscolumn1type,
                           table1columnscolumn1constraintsconstrainttype,
                           table1columnscolumn1constraintsconstraintdefinition,
                           table1columnscolumn2name,
                           table1columnscolumn2type,
                           table1columnscolumn2constraintsconstrainttype,
                           table1columnscolumn2constraintsconstraintdefinition,
                           table1columnscolumn3name,
                           table1columnscolumn3type,
                           table1columnscolumn3constraintsconstrainttype,
                           table1columnscolumn3constraintsconstraintdefinition,
                           table1rowsrowvalue0_column,
                           table1rowsrowvalue0__text,
                           table1rowsrowvalue1_column,
                           table1rowsrowvalue1__text,
                           table1rowsrowvalue2_column,
                           table1rowsrowvalue2__text,
                           table1rowsrowvalue3_column,
                           table1rowsrowvalue3__text,
                           table2database,
                           table2name,
                           table2ddl__cdata,
                           table2columnscolumn0name,
                           table2columnscolumn0type,
                           table2columnscolumn0constraintsconstraint0type,
                           table2columnscolumn0constraintsconstraint0definition,
                           table2columnscolumn0constraintsconstraint1type,
                           table2columnscolumn0constraintsconstraint1definition,
                           table2columnscolumn0constraintsconstraint2type,
                           table2columnscolumn0constraintsconstraint2definition,
                           table2columnscolumn1name,
                           table2columnscolumn1type,
                           table2columnscolumn1constraintsconstrainttype,
                           table2columnscolumn1constraintsconstraintdefinition,
                           table2columnscolumn2name,
                           table2columnscolumn2type,
                           table2columnscolumn2constraintsconstrainttype,
                           table2columnscolumn2constraintsconstraintdefinition,
                           table2columnscolumn3name,
                           table2columnscolumn3type,
                           table2columnscolumn3constraintsconstrainttype,
                           table2columnscolumn3constraintsconstraintdefinition,
                           table2columnscolumn4name,
                           table2columnscolumn4type,
                           table2columnscolumn4constraintsconstrainttype,
                           table2columnscolumn4constraintsconstraintdefinition,
                           table2columnscolumn5name,
                           table2columnscolumn5type,
                           table2columnscolumn5constraintsconstrainttype,
                           table2columnscolumn5constraintsconstraintdefinition,
                           table2columnscolumn6name,
                           table2columnscolumn6type,
                           table2columnscolumn6constraintsconstrainttype,
                           table2columnscolumn6constraintsconstraintdefinition,
                           table2rowsrow0value0_column,
                           table2rowsrow0value0__text,
                           table2rowsrow0value1_column,
                           table2rowsrow0value1__text,
                           table2rowsrow0value2_column,
                           table2rowsrow0value2__text,
                           table2rowsrow0value3_column,
                           table2rowsrow0value3_null,
                           table2rowsrow0value4_column,
                           table2rowsrow0value4_null,
                           table2rowsrow0value5_column,
                           table2rowsrow0value5_null,
                           table2rowsrow0value6_column,
                           table2rowsrow0value6_null,
                           table2rowsrow1value0_column,
                           table2rowsrow1value0__text,
                           table2rowsrow1value1_column,
                           table2rowsrow1value1__text,
                           table2rowsrow1value2_column,
                           table2rowsrow1value2__text,
                           table2rowsrow1value3_column,
                           table2rowsrow1value3__text,
                           table2rowsrow1value4_column,
                           table2rowsrow1value4__text,
                           table2rowsrow1value5_column,
                           table2rowsrow1value5__text,
                           table2rowsrow1value6_column,
                           table2rowsrow1value6__text,
                           table2rowsrow2value0_column,
                           table2rowsrow2value0__text,
                           table2rowsrow2value1_column,
                           table2rowsrow2value1__text,
                           table2rowsrow2value2_column,
                           table2rowsrow2value2__text,
                           table2rowsrow2value3_column,
                           table2rowsrow2value3__text,
                           table2rowsrow2value4_column,
                           table2rowsrow2value4__text,
                           table2rowsrow2value5_column,
                           table2rowsrow2value5__text,
                           table2rowsrow2value6_column,
                           table2rowsrow2value6__text,
                           table3database,
                           table3name,
                           table3ddl__cdata,
                           table3columnscolumn0name,
                           table3columnscolumn0type,
                           table3columnscolumn0constraintsconstraint0type,
                           table3columnscolumn0constraintsconstraint0definition,
                           table3columnscolumn0constraintsconstraint1type,
                           table3columnscolumn0constraintsconstraint1definition,
                           table3columnscolumn1name,
                           table3columnscolumn1type,
                           table3columnscolumn1constraintsconstrainttype,
                           table3columnscolumn1constraintsconstraintdefinition,
                           table3columnscolumn2name,
                           table3columnscolumn2type,
                           table3columnscolumn2constraintsconstrainttype,
                           table3columnscolumn2constraintsconstraintdefinition,
                           table3columnscolumn3name,
                           table3columnscolumn3type,
                           table3columnscolumn3constraintsconstraint0type,
                           table3columnscolumn3constraintsconstraint0definition,
                           table3columnscolumn3constraintsconstraint1type,
                           table3columnscolumn3constraintsconstraint1definition,
                           table3columnscolumn4name,
                           table3columnscolumn4type,
                           table3columnscolumn4constraintsconstraint0type,
                           table3columnscolumn4constraintsconstraint0definition,
                           table3columnscolumn4constraintsconstraint1type,
                           table3columnscolumn4constraintsconstraint1definition,
                           table3columnscolumn5name,
                           table3columnscolumn5type,
                           table3columnscolumn5constraintsconstraint0type,
                           table3columnscolumn5constraintsconstraint0definition,
                           table3columnscolumn5constraintsconstraint1type,
                           table3columnscolumn5constraintsconstraint1definition,
                           table3columnscolumn6name,
                           table3columnscolumn6type,
                           table3columnscolumn6constraintsconstraint0type,
                           table3columnscolumn6constraintsconstraint0definition,
                           table3columnscolumn6constraintsconstraint1type,
                           table3columnscolumn6constraintsconstraint1definition,
                           table3columnscolumn7name,
                           table3columnscolumn7type,
                           table3columnscolumn7constraintsconstrainttype,
                           table3columnscolumn7constraintsconstraintdefinition,
                           table3columnscolumn8name,
                           table3columnscolumn8type,
                           table3columnscolumn8constraintsconstrainttype,
                           table3columnscolumn8constraintsconstraintdefinition,
                           table3rowsrow0value0_column,
                           table3rowsrow0value0__text,
                           table3rowsrow0value1_column,
                           table3rowsrow0value1__text,
                           table3rowsrow0value2_column,
                           table3rowsrow0value2__text,
                           table3rowsrow0value3_column,
                           table3rowsrow0value3__text,
                           table3rowsrow0value4_column,
                           table3rowsrow0value4__text,
                           table3rowsrow0value5_column,
                           table3rowsrow0value5__text,
                           table3rowsrow0value6_column,
                           table3rowsrow0value6__text,
                           table3rowsrow0value7_column,
                           table3rowsrow0value7__text,
                           table3rowsrow0value8_column,
                           table3rowsrow0value8__text,
                           table3rowsrow1value0_column,
                           table3rowsrow1value0__text,
                           table3rowsrow1value1_column,
                           table3rowsrow1value1__text,
                           table3rowsrow1value2_column,
                           table3rowsrow1value2__text,
                           table3rowsrow1value3_column,
                           table3rowsrow1value3__text,
                           table3rowsrow1value4_column,
                           table3rowsrow1value4__text,
                           table3rowsrow1value5_column,
                           table3rowsrow1value5__text,
                           table3rowsrow1value6_column,
                           table3rowsrow1value6__text,
                           table3rowsrow1value7_column,
                           table3rowsrow1value7__text,
                           table3rowsrow1value8_column,
                           table3rowsrow1value8__text,
                           table3rowsrow2value0_column,
                           table3rowsrow2value0__text,
                           table3rowsrow2value1_column,
                           table3rowsrow2value1__text,
                           table3rowsrow2value2_column,
                           table3rowsrow2value2__text,
                           table3rowsrow2value3_column,
                           table3rowsrow2value3__text,
                           table3rowsrow2value4_column,
                           table3rowsrow2value4__text,
                           table3rowsrow2value5_column,
                           table3rowsrow2value5__text,
                           table3rowsrow2value6_column,
                           table3rowsrow2value6__text,
                           table3rowsrow2value7_column,
                           table3rowsrow2value7__text,
                           table3rowsrow2value8_column,
                           table3rowsrow2value8__text,
                           table3rowsrow3value0_column,
                           table3rowsrow3value0__text,
                           table3rowsrow3value1_column,
                           table3rowsrow3value1__text,
                           table3rowsrow3value2_column,
                           table3rowsrow3value2__text,
                           table3rowsrow3value3_column,
                           table3rowsrow3value3__text,
                           table3rowsrow3value4_column,
                           table3rowsrow3value4__text,
                           table3rowsrow3value5_column,
                           table3rowsrow3value5__text,
                           table3rowsrow3value6_column,
                           table3rowsrow3value6__text,
                           table3rowsrow3value7_column,
                           table3rowsrow3value7__text,
                           table3rowsrow3value8_column,
                           table3rowsrow3value8__text,
                           table3rowsrow4value0_column,
                           table3rowsrow4value0__text,
                           table3rowsrow4value1_column,
                           table3rowsrow4value1__text,
                           table3rowsrow4value2_column,
                           table3rowsrow4value2__text,
                           table3rowsrow4value3_column,
                           table3rowsrow4value3__text,
                           table3rowsrow4value4_column,
                           table3rowsrow4value4__text,
                           table3rowsrow4value5_column,
                           table3rowsrow4value5__text,
                           table3rowsrow4value6_column,
                           table3rowsrow4value6__text,
                           table3rowsrow4value7_column,
                           table3rowsrow4value7__text,
                           table3rowsrow4value8_column,
                           table3rowsrow4value8__text,
                           table3rowsrow5value0_column,
                           table3rowsrow5value0__text,
                           table3rowsrow5value1_column,
                           table3rowsrow5value1__text,
                           table3rowsrow5value2_column,
                           table3rowsrow5value2__text,
                           table3rowsrow5value3_column,
                           table3rowsrow5value3__text,
                           table3rowsrow5value4_column,
                           table3rowsrow5value4__text,
                           table3rowsrow5value5_column,
                           table3rowsrow5value5__text,
                           table3rowsrow5value6_column,
                           table3rowsrow5value6__text,
                           table3rowsrow5value7_column,
                           table3rowsrow5value7__text,
                           table3rowsrow5value8_column,
                           table3rowsrow5value8__text,
                           table3rowsrow6value0_column,
                           table3rowsrow6value0__text,
                           table3rowsrow6value1_column,
                           table3rowsrow6value1__text,
                           table3rowsrow6value2_column,
                           table3rowsrow6value2__text,
                           table3rowsrow6value3_column,
                           table3rowsrow6value3__text,
                           table3rowsrow6value4_column,
                           table3rowsrow6value4__text,
                           table3rowsrow6value5_column,
                           table3rowsrow6value5__text,
                           table3rowsrow6value6_column,
                           table3rowsrow6value6__text,
                           table3rowsrow6value7_column,
                           table3rowsrow6value7__text,
                           table3rowsrow6value8_column,
                           table3rowsrow6value8__text,
                           table4database,
                           table4name,
                           table4ddl__cdata,
                           table4columnscolumn0name,
                           table4columnscolumn0type,
                           table4columnscolumn0constraintsconstraint0type,
                           table4columnscolumn0constraintsconstraint0definition,
                           table4columnscolumn0constraintsconstraint1type,
                           table4columnscolumn0constraintsconstraint1definition,
                           table4columnscolumn1name,
                           table4columnscolumn1type,
                           table4columnscolumn1constraintsconstrainttype,
                           table4columnscolumn1constraintsconstraintdefinition,
                           table4columnscolumn2name,
                           table4columnscolumn2type,
                           table4columnscolumn2constraintsconstrainttype,
                           table4columnscolumn2constraintsconstraintdefinition,
                           table4columnscolumn3name,
                           table4columnscolumn3type,
                           table4columnscolumn3constraintsconstrainttype,
                           table4columnscolumn3constraintsconstraintdefinition,
                           table4columnscolumn4name,
                           table4columnscolumn4type,
                           table4columnscolumn4constraintsconstrainttype,
                           table4columnscolumn4constraintsconstraintdefinition,
                           table4columnscolumn5name,
                           table4columnscolumn5type,
                           table4columnscolumn5constraintsconstrainttype,
                           table4columnscolumn5constraintsconstraintdefinition,
                           table4rowsrow0value0_column,
                           table4rowsrow0value0__text,
                           table4rowsrow0value1_column,
                           table4rowsrow0value1__text,
                           table4rowsrow0value2_column,
                           table4rowsrow0value2__text,
                           table4rowsrow0value3_column,
                           table4rowsrow0value3__text,
                           table4rowsrow0value4_column,
                           table4rowsrow0value4__text,
                           table4rowsrow0value5_column,
                           table4rowsrow0value5__text,
                           table4rowsrow1value0_column,
                           table4rowsrow1value0__text,
                           table4rowsrow1value1_column,
                           table4rowsrow1value1__text,
                           table4rowsrow1value2_column,
                           table4rowsrow1value2__text,
                           table4rowsrow1value3_column,
                           table4rowsrow1value3__text,
                           table4rowsrow1value4_column,
                           table4rowsrow1value4__text,
                           table4rowsrow1value5_column,
                           table4rowsrow1value5__text,
                           table5database,
                           table5name,
                           table5ddl__cdata,
                           table5columnscolumn0name,
                           table5columnscolumn0type,
                           table5columnscolumn0constraintsconstraint0type,
                           table5columnscolumn0constraintsconstraint0definition,
                           table5columnscolumn0constraintsconstraint1type,
                           table5columnscolumn0constraintsconstraint1definition,
                           table5columnscolumn1name,
                           table5columnscolumn1type,
                           table5columnscolumn1constraintsconstrainttype,
                           table5columnscolumn1constraintsconstraintdefinition,
                           table5columnscolumn2name,
                           table5columnscolumn2type,
                           table5columnscolumn2constraintsconstrainttype,
                           table5columnscolumn2constraintsconstraintdefinition,
                           table5columnscolumn3name,
                           table5columnscolumn3type,
                           table5columnscolumn3constraintsconstrainttype,
                           table5columnscolumn3constraintsconstraintdefinition,
                           table5columnscolumn4name,
                           table5columnscolumn4type,
                           table5columnscolumn4constraintsconstraint0type,
                           table5columnscolumn4constraintsconstraint0definition,
                           table5columnscolumn4constraintsconstraint1type,
                           table5columnscolumn4constraintsconstraint1definition,
                           table5rowsrow0value0_column,
                           table5rowsrow0value0__text,
                           table5rowsrow0value1_column,
                           table5rowsrow0value1__text,
                           table5rowsrow0value2_column,
                           table5rowsrow0value2__text,
                           table5rowsrow0value3_column,
                           table5rowsrow0value3__text,
                           table5rowsrow0value4_column,
                           table5rowsrow0value4__text,
                           table5rowsrow1value0_column,
                           table5rowsrow1value0__text,
                           table5rowsrow1value1_column,
                           table5rowsrow1value1__text,
                           table5rowsrow1value2_column,
                           table5rowsrow1value2__text,
                           table5rowsrow1value3_column,
                           table5rowsrow1value3__text,
                           table5rowsrow1value4_column,
                           table5rowsrow1value4__text,
                           table5rowsrow2value0_column,
                           table5rowsrow2value0__text,
                           table5rowsrow2value1_column,
                           table5rowsrow2value1__text,
                           table5rowsrow2value2_column,
                           table5rowsrow2value2__text,
                           table5rowsrow2value3_column,
                           table5rowsrow2value3__text,
                           table5rowsrow2value4_column,
                           table5rowsrow2value4__text,
                           table5rowsrow3value0_column,
                           table5rowsrow3value0__text,
                           table5rowsrow3value1_column,
                           table5rowsrow3value1__text,
                           table5rowsrow3value2_column,
                           table5rowsrow3value2__text,
                           table5rowsrow3value3_column,
                           table5rowsrow3value3__text,
                           table5rowsrow3value4_column,
                           table5rowsrow3value4__text,
                           table5rowsrow4value0_column,
                           table5rowsrow4value0__text,
                           table5rowsrow4value1_column,
                           table5rowsrow4value1__text,
                           table5rowsrow4value2_column,
                           table5rowsrow4value2__text,
                           table5rowsrow4value3_column,
                           table5rowsrow4value3__text,
                           table5rowsrow4value4_column,
                           table5rowsrow4value4__text,
                           table5rowsrow5value0_column,
                           table5rowsrow5value0__text,
                           table5rowsrow5value1_column,
                           table5rowsrow5value1__text,
                           table5rowsrow5value2_column,
                           table5rowsrow5value2__text,
                           table5rowsrow5value3_column,
                           table5rowsrow5value3__text,
                           table5rowsrow5value4_column,
                           table5rowsrow5value4__text,
                           table5rowsrow6value0_column,
                           table5rowsrow6value0__text,
                           table5rowsrow6value1_column,
                           table5rowsrow6value1__text,
                           table5rowsrow6value2_column,
                           table5rowsrow6value2__text,
                           table5rowsrow6value3_column,
                           table5rowsrow6value3__text,
                           table5rowsrow6value4_column,
                           table5rowsrow6value4__text,
                           table5rowsrow7value0_column,
                           table5rowsrow7value0__text,
                           table5rowsrow7value1_column,
                           table5rowsrow7value1__text,
                           table5rowsrow7value2_column,
                           table5rowsrow7value2__text,
                           table5rowsrow7value3_column,
                           table5rowsrow7value3__text,
                           table5rowsrow7value4_column,
                           table5rowsrow7value4__text,
                           table5rowsrow8value0_column,
                           table5rowsrow8value0__text,
                           table5rowsrow8value1_column,
                           table5rowsrow8value1__text,
                           table5rowsrow8value2_column,
                           table5rowsrow8value2__text,
                           table5rowsrow8value3_column,
                           table5rowsrow8value3__text,
                           table5rowsrow8value4_column,
                           table5rowsrow8value4__text,
                           table6database,
                           table6name,
                           table6ddl__cdata,
                           table6columnscolumn0name,
                           table6columnscolumn0type,
                           table6columnscolumn0constraintsconstraint0type,
                           table6columnscolumn0constraintsconstraint0definition,
                           table6columnscolumn0constraintsconstraint1type,
                           table6columnscolumn0constraintsconstraint1definition,
                           table6columnscolumn1name,
                           table6columnscolumn1type,
                           table6columnscolumn1constraintsconstraint0type,
                           table6columnscolumn1constraintsconstraint0definition,
                           table6columnscolumn1constraintsconstraint1type,
                           table6columnscolumn1constraintsconstraint1definition,
                           table6columnscolumn2name,
                           table6columnscolumn2type,
                           table6columnscolumn2constraintsconstraint0type,
                           table6columnscolumn2constraintsconstraint0definition,
                           table6columnscolumn2constraintsconstraint1type,
                           table6columnscolumn2constraintsconstraint1definition,
                           table6rowsrow0value0_column,
                           table6rowsrow0value0__text,
                           table6rowsrow0value1_column,
                           table6rowsrow0value1__text,
                           table6rowsrow0value2_column,
                           table6rowsrow0value2__text,
                           table6rowsrow1value0_column,
                           table6rowsrow1value0__text,
                           table6rowsrow1value1_column,
                           table6rowsrow1value1__text,
                           table6rowsrow1value2_column,
                           table6rowsrow1value2__text,
                           table6rowsrow2value0_column,
                           table6rowsrow2value0__text,
                           table6rowsrow2value1_column,
                           table6rowsrow2value1__text,
                           table6rowsrow2value2_column,
                           table6rowsrow2value2__text,
                           table6rowsrow3value0_column,
                           table6rowsrow3value0__text,
                           table6rowsrow3value1_column,
                           table6rowsrow3value1__text,
                           table6rowsrow3value2_column,
                           table6rowsrow3value2__text,
                           table6rowsrow4value0_column,
                           table6rowsrow4value0__text,
                           table6rowsrow4value1_column,
                           table6rowsrow4value1__text,
                           table6rowsrow4value2_column,
                           table6rowsrow4value2__text,
                           table6rowsrow5value0_column,
                           table6rowsrow5value0__text,
                           table6rowsrow5value1_column,
                           table6rowsrow5value1__text,
                           table6rowsrow5value2_column,
                           table6rowsrow5value2__text,
                           table6rowsrow6value0_column,
                           table6rowsrow6value0__text,
                           table6rowsrow6value1_column,
                           table6rowsrow6value1__text,
                           table6rowsrow6value2_column,
                           table6rowsrow6value2__text,
                           table6rowsrow7value0_column,
                           table6rowsrow7value0__text,
                           table6rowsrow7value1_column,
                           table6rowsrow7value1__text,
                           table6rowsrow7value2_column,
                           table6rowsrow7value2__text,
                           table6rowsrow8value0_column,
                           table6rowsrow8value0__text,
                           table6rowsrow8value1_column,
                           table6rowsrow8value1__text,
                           table6rowsrow8value2_column,
                           table6rowsrow8value2__text,
                           index0database,
                           index0name,
                           index0ddl__cdata,
                           index1database,
                           index1name,
                           index1ddl__cdata,
                           index2database,
                           index2name,
                           index2ddl__cdata,
                           index3database,
                           index3name,
                           index3unique,
                           index3ddl__cdata
                       )
                       VALUES (
                           'db1',
                           '',
                           'punto_venta_cliente',
                           '"CREATE TABLE ""punto_venta_cliente"" (""persona_ptr_id"" integer NOT NULL PRIMARY KEY REFERENCES ""punto_venta_persona"" (""user_ptr_id"") DEFERRABLE INITIALLY DEFERRED)"',
                           'persona_ptr_id',
                           'integer',
                           'NOT NULL',
                           'NOT NULL',
                           'PRIMARY KEY',
                           'PRIMARY KEY',
                           'FOREIGN KEY',
                           '"REFERENCES ""punto_venta_persona"" (""user_ptr_id"")"',
                           0.0,
                           2.0,
                           0.0,
                           5.0,
                           '',
                           'punto_venta_empleado',
                           '"CREATE TABLE ""punto_venta_empleado"" (""persona_ptr_id"" integer NOT NULL PRIMARY KEY REFERENCES ""punto_venta_persona"" (""user_ptr_id"") DEFERRABLE INITIALLY DEFERRED, ""documento_identificador"" varchar(30) NOT NULL, ""fecha_contratacion"" date NOT NULL, ""afp"" varchar(15) NOT NULL)"',
                           'persona_ptr_id',
                           'integer',
                           'NOT NULL',
                           'NOT NULL',
                           'PRIMARY KEY',
                           'PRIMARY KEY',
                           'FOREIGN KEY',
                           '"REFERENCES ""punto_venta_persona"" (""user_ptr_id"")"',
                           'documento_identificador',
                           'varchar',
                           'NOT NULL',
                           'NOT NULL',
                           'fecha_contratacion',
                           'date',
                           'NOT NULL',
                           'NOT NULL',
                           'afp',
                           'varchar',
                           'NOT NULL',
                           'NOT NULL',
                           '0',
                           '4',
                           '1',
                           212121212.0,
                           2.0,
                           0.0,
                           3.0,
                           0.0,
                           '',
                           0.0,
                           '"CREATE TABLE ""punto_venta_persona"" (""user_ptr_id"" integer NOT NULL PRIMARY KEY REFERENCES ""auth_user"" (""id"") DEFERRABLE INITIALLY DEFERRED, ""fecha_nacimiento"" date NOT NULL, ""direccion"" varchar(20) NULL, ""contrasena"" varchar(20) NULL, ""correo_electronico"" varchar(30) NULL, ""primer_apellido"" varchar(20) NULL, ""primer_nombre"" varchar(20) NULL)"',
                           'user_ptr_id',
                           'integer',
                           'NOT NULL',
                           'NOT NULL',
                           'PRIMARY KEY',
                           'PRIMARY KEY',
                           'FOREIGN KEY',
                           '"REFERENCES ""auth_user"" (""id"")"',
                           'fecha_nacimiento',
                           'date',
                           'NOT NULL',
                           'NOT NULL',
                           'direccion',
                           'varchar',
                           '',
                           'NULL',
                           'contrasena',
                           'varchar',
                           '',
                           'NULL',
                           'correo_electronico',
                           'varchar',
                           '',
                           'NULL',
                           'primer_apellido',
                           'varchar',
                           '',
                           'NULL',
                           'primer_nombre',
                           'varchar',
                           '',
                           'NULL',
                           '0',
                           '2',
                           '1',
                           '2003-11-29',
                           '2',
                           'pedro 120',
                           '3',
                           'true',
                           '4',
                           0.0,
                           5.0,
                           0.0,
                           '6',
                           0.0,
                           '0',
                           4.0,
                           '1',
                           0.0,
                           '2',
                           0.0,
                           '3',
                           0.0,
                           '4',
                           0.0,
                           5.0,
                           0.0,
                           '6',
                           0.0,
                           '0',
                           5.0,
                           '1',
                           0.0,
                           '2',
                           0.0,
                           '3',
                           0.0,
                           '4',
                           0.0,
                           5.0,
                           0.0,
                           '6',
                           0.0,
                           '',
                           0.0,
                           '"CREATE TABLE ""punto_venta_producto"" (""id"" integer NOT NULL PRIMARY KEY AUTOINCREMENT, ""nombre"" varchar(30) NOT NULL, ""categoria"" varchar(20) NOT NULL, ""precio_compra"" integer unsigned NOT NULL CHECK (""precio_compra"" >= 0), ""precio_venta"" integer unsigned NOT NULL CHECK (""precio_venta"" >= 0), ""stock"" integer unsigned NOT NULL CHECK (""stock"" >= 0), ""proveedor_id"" bigint NOT NULL REFERENCES ""punto_venta_proveedor"" (""id"") DEFERRABLE INITIALLY DEFERRED, ""imagen"" varchar(100) NOT NULL, ""descripcion"" varchar(300) NOT NULL)"',
                           0.0,
                           'integer',
                           0.0,
                           'NOT NULL',
                           0.0,
                           'PRIMARY KEY AUTOINCREMENT',
                           'nombre',
                           'varchar',
                           'NOT NULL',
                           'NOT NULL',
                           'categoria',
                           'varchar',
                           'NOT NULL',
                           'NOT NULL',
                           'precio_compra',
                           'integer unsigned',
                           'NOT NULL',
                           'NOT NULL',
                           'CHECK',
                           '"CHECK (""precio_compra"" >= 0)"',
                           'precio_venta',
                           'integer unsigned',
                           'NOT NULL',
                           'NOT NULL',
                           'CHECK',
                           '"CHECK (""precio_venta"" >= 0)"',
                           'stock',
                           'integer unsigned',
                           'NOT NULL',
                           'NOT NULL',
                           'CHECK',
                           '"CHECK (""stock"" >= 0)"',
                           'proveedor_id',
                           'bigint',
                           'NOT NULL',
                           'NOT NULL',
                           'FOREIGN KEY',
                           '"REFERENCES ""punto_venta_proveedor"" (""id"")"',
                           'imagen',
                           'varchar',
                           'NOT NULL',
                           'NOT NULL',
                           'descripcion',
                           'varchar',
                           'NOT NULL',
                           'NOT NULL',
                           '0',
                           '1',
                           '1',
                           'shampoo',
                           '2',
                           'pelo',
                           '3',
                           '1000',
                           '4',
                           '3000',
                           '5',
                           '20',
                           '6',
                           '1',
                           '7',
                           'productos/shampootionacho.webp',
                           '8',
                           0.0,
                           0.0,
                           2.0,
                           '1',
                           0.0,
                           '2',
                           0.0,
                           3.0,
                           1231123.0,
                           4.0,
                           12321.0,
                           5.0,
                           132.0,
                           6.0,
                           1.0,
                           '7',
                           0.0,
                           '8',
                           0.0,
                           0.0,
                           3.0,
                           '1',
                           0.0,
                           '2',
                           0.0,
                           3.0,
                           5.0,
                           4.0,
                           10000.0,
                           5.0,
                           10.0,
                           6.0,
                           2.0,
                           '7',
                           0.0,
                           '8',
                           0.0,
                           0.0,
                           4.0,
                           '1',
                           0.0,
                           '2',
                           0.0,
                           3.0,
                           5000.0,
                           4.0,
                           10000.0,
                           5.0,
                           20.0,
                           6.0,
                           2.0,
                           '7',
                           0.0,
                           '8',
                           0.0,
                           0.0,
                           5.0,
                           '1',
                           0.0,
                           '2',
                           0.0,
                           3.0,
                           5000.0,
                           4.0,
                           8990.0,
                           5.0,
                           7.0,
                           6.0,
                           2.0,
                           '7',
                           0.0,
                           '8',
                           0.0,
                           0.0,
                           6.0,
                           '1',
                           0.0,
                           '2',
                           0.0,
                           3.0,
                           5000.0,
                           4.0,
                           7990.0,
                           5.0,
                           1.0,
                           6.0,
                           2.0,
                           '7',
                           0.0,
                           '8',
                           0.0,
                           0.0,
                           7.0,
                           '1',
                           0.0,
                           '2',
                           0.0,
                           3.0,
                           1000.0,
                           4.0,
                           5700.0,
                           5.0,
                           4.0,
                           6.0,
                           2.0,
                           '7',
                           0.0,
                           '8',
                           0.0,
                           0.0,
                           0.0,
                           '"CREATE TABLE ""punto_venta_proveedor"" (""id"" integer NOT NULL PRIMARY KEY AUTOINCREMENT, ""nombre"" varchar(40) NOT NULL, ""direccion"" varchar(40) NOT NULL, ""rut_empresa"" varchar(30) NOT NULL, ""telefono_celular"" varchar(30) NOT NULL, ""email"" varchar(40) NOT NULL)"',
                           0.0,
                           'integer',
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           'varchar',
                           0.0,
                           'NOT NULL',
                           'rut_empresa',
                           'varchar',
                           'NOT NULL',
                           'NOT NULL',
                           'telefono_celular',
                           'varchar',
                           'NOT NULL',
                           'NOT NULL',
                           'email',
                           'varchar',
                           'NOT NULL',
                           'NOT NULL',
                           '0',
                           '1',
                           '1',
                           'Tio Nacho',
                           '2',
                           'pedro 120',
                           '3',
                           '312432434',
                           '4',
                           '34254324',
                           '5',
                           'tionacho@gmail.com',
                           '0',
                           '2',
                           '1',
                           'solopelo',
                           '2',
                           'washington 234',
                           '3',
                           '1311441',
                           '4',
                           '3425432423',
                           5.0,
                           0.0,
                           0.0,
                           'punto_venta_servicio',
                           0.0,
                           'id',
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           'nombre',
                           0.0,
                           0.0,
                           0.0,
                           'descripcion',
                           0.0,
                           'NOT NULL',
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           'precio',
                           'integer unsigned',
                           'NOT NULL',
                           'NOT NULL',
                           'CHECK',
                           '"CHECK (""precio"" >= 0)"',
                           '0',
                           '1',
                           '1',
                           'Corte Varon',
                           '2',
                           'Corte de pelo Varón Clásico',
                           '3',
                           '60000000',
                           '4',
                           '7000',
                           '0',
                           '2',
                           '1',
                           'Pedicure',
                           '2',
                           '"Lorem ipsum dolor sit amet, consectetur adipiscing"',
                           '3',
                           '60000000',
                           '4',
                           '5644',
                           '0',
                           '3',
                           '1',
                           'Manicure',
                           '2',
                           'tratamiento de belleza para las uñas y las manos',
                           3.0,
                           60000000.,
                           4.0,
                           '5500',
                           0.0,
                           '4',
                           1.0,
                           0.0,
                           2.0,
                           0.0,
                           3.0,
                           60000000.,
                           4.0,
                           '20000',
                           0.0,
                           '5',
                           '1',
                           0.0,
                           2.0,
                           0.0,
                           3.0,
                           60000000.,
                           4.0,
                           12930.0,
                           '0',
                           6.0,
                           '1',
                           0.0,
                           2.0,
                           0.0,
                           3.0,
                           30000000.,
                           4.0,
                           4500.0,
                           '0',
                           7.0,
                           '1',
                           0.0,
                           2.0,
                           0.0,
                           3.0,
                           45000000.,
                           4.0,
                           13000.0,
                           '0',
                           8.0,
                           '1',
                           0.0,
                           2.0,
                           0.0,
                           3.0,
                           5000000.,
                           4.0,
                           10000.0,
                           '0',
                           9.0,
                           '1',
                           0.0,
                           2.0,
                           0.0,
                           3.0,
                           120000000.,
                           4.0,
                           20000.0,
                           '',
                           0.0,
                           '"CREATE TABLE ""punto_venta_servicio_empleados"" (""id"" integer NOT NULL PRIMARY KEY AUTOINCREMENT, ""servicio_id"" bigint NOT NULL REFERENCES ""punto_venta_servicio"" (""id"") DEFERRABLE INITIALLY DEFERRED, ""empleado_id"" integer NOT NULL REFERENCES ""punto_venta_empleado"" (""persona_ptr_id"") DEFERRABLE INITIALLY DEFERRED)"',
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           'bigint',
                           0.0,
                           'NOT NULL',
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           '"REFERENCES ""punto_venta_empleado"" (""persona_ptr_id"")"',
                           0.0,
                           '1',
                           1.0,
                           1.0,
                           2.0,
                           4.0,
                           '0',
                           '2',
                           '1',
                           '2',
                           '2',
                           '4',
                           '0',
                           '3',
                           '1',
                           '3',
                           '2',
                           '4',
                           '0',
                           '4',
                           '1',
                           '4',
                           '2',
                           '4',
                           '0',
                           '5',
                           '1',
                           '5',
                           '2',
                           4.0,
                           0.0,
                           6.0,
                           1.0,
                           6.0,
                           2.0,
                           4.0,
                           0.0,
                           7.0,
                           1.0,
                           7.0,
                           2.0,
                           4.0,
                           0.0,
                           8.0,
                           1.0,
                           8.0,
                           2.0,
                           4.0,
                           0.0,
                           9.0,
                           1.0,
                           9.0,
                           2.0,
                           4.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0,
                           0.0
                       );


-- Index: auth_group_permissions_group_id_b120cbf9
DROP INDEX IF EXISTS auth_group_permissions_group_id_b120cbf9;

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions (
    "group_id"
);


-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
DROP INDEX IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;

CREATE UNIQUE INDEX auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON auth_group_permissions (
    "group_id",
    "permission_id"
);


-- Index: auth_group_permissions_permission_id_84c5c92e
DROP INDEX IF EXISTS auth_group_permissions_permission_id_84c5c92e;

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions (
    "permission_id"
);


-- Index: auth_permission_content_type_id_2f476e4b
DROP INDEX IF EXISTS auth_permission_content_type_id_2f476e4b;

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission (
    "content_type_id"
);


-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
DROP INDEX IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;

CREATE UNIQUE INDEX auth_permission_content_type_id_codename_01ab375a_uniq ON auth_permission (
    "content_type_id",
    "codename"
);


-- Index: auth_user_groups_group_id_97559544
DROP INDEX IF EXISTS auth_user_groups_group_id_97559544;

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups (
    "group_id"
);


-- Index: auth_user_groups_user_id_6a12ed8b
DROP INDEX IF EXISTS auth_user_groups_user_id_6a12ed8b;

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups (
    "user_id"
);


-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
DROP INDEX IF EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq;

CREATE UNIQUE INDEX auth_user_groups_user_id_group_id_94350c0c_uniq ON auth_user_groups (
    "user_id",
    "group_id"
);


-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
DROP INDEX IF EXISTS auth_user_user_permissions_permission_id_1fbb5f2c;

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions (
    "permission_id"
);


-- Index: auth_user_user_permissions_user_id_a95ead1b
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_a95ead1b;

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions (
    "user_id"
);


-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;

CREATE UNIQUE INDEX auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON auth_user_user_permissions (
    "user_id",
    "permission_id"
);


-- Index: django_admin_log_content_type_id_c4bce8eb
DROP INDEX IF EXISTS django_admin_log_content_type_id_c4bce8eb;

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log (
    "content_type_id"
);


-- Index: django_admin_log_user_id_c564eba6
DROP INDEX IF EXISTS django_admin_log_user_id_c564eba6;

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log (
    "user_id"
);


-- Index: django_content_type_app_label_model_76bd3d3b_uniq
DROP INDEX IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;

CREATE UNIQUE INDEX django_content_type_app_label_model_76bd3d3b_uniq ON django_content_type (
    "app_label",
    "model"
);


-- Index: punto_venta_boleta_cliente_id_6d4fc5ad
DROP INDEX IF EXISTS punto_venta_boleta_cliente_id_6d4fc5ad;

CREATE INDEX punto_venta_boleta_cliente_id_6d4fc5ad ON punto_venta_boleta (
    "cliente_id"
);


-- Index: punto_venta_boleta_empleado_id_0c03dcd4
DROP INDEX IF EXISTS punto_venta_boleta_empleado_id_0c03dcd4;

CREATE INDEX punto_venta_boleta_empleado_id_0c03dcd4 ON punto_venta_boleta (
    "empleado_id"
);


-- Index: punto_venta_boleta_producto_boleta_id_964c6be4
DROP INDEX IF EXISTS punto_venta_boleta_producto_boleta_id_964c6be4;

CREATE INDEX punto_venta_boleta_producto_boleta_id_964c6be4 ON punto_venta_boleta_producto (
    "boleta_id"
);


-- Index: punto_venta_boleta_producto_producto_id_a84e0a8e
DROP INDEX IF EXISTS punto_venta_boleta_producto_producto_id_a84e0a8e;

CREATE INDEX punto_venta_boleta_producto_producto_id_a84e0a8e ON punto_venta_boleta_producto (
    "producto_id"
);


-- Index: punto_venta_boleta_servicio_boleta_id_a5a56250
DROP INDEX IF EXISTS punto_venta_boleta_servicio_boleta_id_a5a56250;

CREATE INDEX punto_venta_boleta_servicio_boleta_id_a5a56250 ON punto_venta_boleta_servicio (
    "boleta_id"
);


-- Index: punto_venta_boleta_servicio_servicio_id_659b6b26
DROP INDEX IF EXISTS punto_venta_boleta_servicio_servicio_id_659b6b26;

CREATE INDEX punto_venta_boleta_servicio_servicio_id_659b6b26 ON punto_venta_boleta_servicio (
    "servicio_id"
);


-- Index: punto_venta_cita_cliente_id_d0690215
DROP INDEX IF EXISTS punto_venta_cita_cliente_id_d0690215;

CREATE INDEX punto_venta_cita_cliente_id_d0690215 ON punto_venta_cita (
    "cliente_id"
);


-- Index: punto_venta_cita_servicio_id_70a4c423
DROP INDEX IF EXISTS punto_venta_cita_servicio_id_70a4c423;

CREATE INDEX punto_venta_cita_servicio_id_70a4c423 ON punto_venta_cita (
    "servicio_id"
);


-- Index: punto_venta_factura_detalle_factura_id_3e53b026
DROP INDEX IF EXISTS punto_venta_factura_detalle_factura_id_3e53b026;

CREATE INDEX punto_venta_factura_detalle_factura_id_3e53b026 ON punto_venta_factura_detalle (
    "factura_id"
);


-- Index: punto_venta_factura_detalle_producto_id_a7a6622a
DROP INDEX IF EXISTS punto_venta_factura_detalle_producto_id_a7a6622a;

CREATE INDEX punto_venta_factura_detalle_producto_id_a7a6622a ON punto_venta_factura_detalle (
    "producto_id"
);


-- Index: punto_venta_factura_empleado_id_e68f0d6f
DROP INDEX IF EXISTS punto_venta_factura_empleado_id_e68f0d6f;

CREATE INDEX punto_venta_factura_empleado_id_e68f0d6f ON punto_venta_factura (
    "empleado_id"
);


-- Index: punto_venta_factura_proveedor_id_ce07546c
DROP INDEX IF EXISTS punto_venta_factura_proveedor_id_ce07546c;

CREATE INDEX punto_venta_factura_proveedor_id_ce07546c ON punto_venta_factura (
    "proveedor_id"
);


-- Index: punto_venta_producto_proveedor_id_64c56173
DROP INDEX IF EXISTS punto_venta_producto_proveedor_id_64c56173;

CREATE INDEX punto_venta_producto_proveedor_id_64c56173 ON punto_venta_producto (
    "proveedor_id"
);


-- Index: punto_venta_servicio_empleados_empleado_id_4d585b70
DROP INDEX IF EXISTS punto_venta_servicio_empleados_empleado_id_4d585b70;

CREATE INDEX punto_venta_servicio_empleados_empleado_id_4d585b70 ON punto_venta_servicio_empleados (
    "empleado_id"
);


-- Index: punto_venta_servicio_empleados_servicio_id_d99264a2
DROP INDEX IF EXISTS punto_venta_servicio_empleados_servicio_id_d99264a2;

CREATE INDEX punto_venta_servicio_empleados_servicio_id_d99264a2 ON punto_venta_servicio_empleados (
    "servicio_id"
);


-- Index: punto_venta_servicio_empleados_servicio_id_empleado_id_5d91cc70_uniq
DROP INDEX IF EXISTS punto_venta_servicio_empleados_servicio_id_empleado_id_5d91cc70_uniq;

CREATE UNIQUE INDEX punto_venta_servicio_empleados_servicio_id_empleado_id_5d91cc70_uniq ON punto_venta_servicio_empleados (
    "servicio_id",
    "empleado_id"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
