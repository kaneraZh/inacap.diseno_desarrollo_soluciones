--
-- File generated with SQLiteStudio v3.4.4 on Wed Dec 6 02:22:06 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;

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
