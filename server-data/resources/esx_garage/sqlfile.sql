ALTER TABLE owned_vehicles ADD COLUMN damages varchar(255) NOT NULL DEFAULT '{}';
ALTER TABLE owned_vehicles ADD state BOOLEAN NOT NULL DEFAULT TRUE;