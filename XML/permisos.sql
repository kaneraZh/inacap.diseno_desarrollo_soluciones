--
-- File generated with SQLiteStudio v3.4.4 on Wed Dec 6 02:22:06 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_group
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
INSERT INTO auth_group (id, name) VALUES (1, 'jefe');
INSERT INTO auth_group (id, name) VALUES (2, 'empleado');
INSERT INTO auth_group (id, name) VALUES (3, 'cliente');

-- Table: auth_group_permissions
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (1, 1, 25);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (2, 1, 26);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (3, 1, 27);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (4, 1, 28);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (5, 1, 29);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (6, 1, 30);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (7, 1, 31);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (8, 1, 32);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (9, 1, 33);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (10, 1, 34);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (11, 1, 35);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (12, 1, 36);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (13, 1, 37);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (14, 1, 38);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (15, 1, 39);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (16, 1, 40);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (17, 1, 41);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (18, 1, 42);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (19, 1, 43);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (20, 1, 44);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (21, 1, 45);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (22, 1, 46);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (23, 1, 47);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (24, 1, 48);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (25, 1, 49);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (26, 1, 50);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (27, 1, 51);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (28, 1, 52);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (29, 1, 53);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (30, 1, 54);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (31, 1, 55);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (32, 1, 56);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (33, 1, 57);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (34, 1, 58);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (35, 1, 59);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (36, 1, 60);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (37, 1, 61);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (38, 1, 62);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (39, 1, 63);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (40, 1, 64);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (41, 1, 65);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (42, 1, 66);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (43, 1, 67);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (44, 1, 68);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (45, 1, 69);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (46, 1, 70);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (47, 1, 71);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (48, 1, 72);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (49, 1, 73);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (50, 1, 74);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (51, 1, 75);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (52, 1, 76);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (53, 1, 77);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (54, 1, 78);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (55, 2, 67);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (56, 2, 68);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (57, 2, 70);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (58, 2, 71);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (59, 2, 72);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (60, 2, 74);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (61, 2, 60);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (62, 2, 47);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (63, 2, 48);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (64, 2, 49);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (65, 2, 50);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (66, 2, 25);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (67, 2, 26);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (68, 2, 59);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (69, 2, 28);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (70, 2, 61);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (71, 2, 62);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (72, 3, 75);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (73, 3, 77);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (74, 3, 78);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (75, 3, 50);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (76, 3, 62);

-- Table: auth_permission
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_boleta', 'Can add boleta');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_boleta', 'Can change boleta');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_boleta', 'Can delete boleta');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_boleta', 'Can view boleta');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 7, 'can_add_boleta', 'Puede agregar boletas');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 7, 'can_delete_boleta', 'Puede eliminar boletas');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 7, 'can_update_boleta', 'Puede actualizar boletas');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'add_factura', 'Can add factura');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 8, 'change_factura', 'Can change factura');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 8, 'delete_factura', 'Can delete factura');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 8, 'view_factura', 'Can view factura');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 8, 'can_add_factura', 'Puede agregar facturas');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 8, 'can_delete_factura', 'Puede eliminar facturas');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 8, 'can_update_factura', 'Puede actualizar facturas');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 9, 'add_persona', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 9, 'change_persona', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 9, 'delete_persona', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 9, 'view_persona', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 10, 'add_proveedor', 'Can add proveedor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 10, 'change_proveedor', 'Can change proveedor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (45, 10, 'delete_proveedor', 'Can delete proveedor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (46, 10, 'view_proveedor', 'Can view proveedor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (47, 11, 'add_servicio', 'Can add servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (48, 11, 'change_servicio', 'Can change servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (49, 11, 'delete_servicio', 'Can delete servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (50, 11, 'view_servicio', 'Can view servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (51, 12, 'add_cliente', 'Can add Cliente');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (52, 12, 'change_cliente', 'Can change Cliente');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (53, 12, 'delete_cliente', 'Can delete Cliente');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (54, 12, 'view_cliente', 'Can view Cliente');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (55, 13, 'add_empleado', 'Can add Empleado');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (56, 13, 'change_empleado', 'Can change Empleado');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (57, 13, 'delete_empleado', 'Can delete Empleado');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (58, 13, 'view_empleado', 'Can view Empleado');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (59, 14, 'add_producto', 'Can add producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (60, 14, 'change_producto', 'Can change producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (61, 14, 'delete_producto', 'Can delete producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (62, 14, 'view_producto', 'Can view producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (63, 15, 'add_factura_detalle', 'Can add factura_detalle');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (64, 15, 'change_factura_detalle', 'Can change factura_detalle');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (65, 15, 'delete_factura_detalle', 'Can delete factura_detalle');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (66, 15, 'view_factura_detalle', 'Can view factura_detalle');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (67, 16, 'add_boleta_servicio', 'Can add boleta_servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (68, 16, 'change_boleta_servicio', 'Can change boleta_servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (69, 16, 'delete_boleta_servicio', 'Can delete boleta_servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (70, 16, 'view_boleta_servicio', 'Can view boleta_servicio');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (71, 17, 'add_boleta_producto', 'Can add boleta_producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (72, 17, 'change_boleta_producto', 'Can change boleta_producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (73, 17, 'delete_boleta_producto', 'Can delete boleta_producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (74, 17, 'view_boleta_producto', 'Can view boleta_producto');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (75, 18, 'add_cita', 'Can add cita');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (76, 18, 'change_cita', 'Can change cita');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (77, 18, 'delete_cita', 'Can delete cita');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (78, 18, 'view_cita', 'Can view cita');

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
