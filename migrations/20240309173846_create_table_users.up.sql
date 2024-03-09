-- Add up migration script here
create table "users"(
      id   uuid primary key default uuid_generate_v1mc(),
      first_name varchar(50) not null,
      last_name varchar(50) not null,
      username varchar(50) collate "case_insensitive" unique not null,
      email varchar(255) collate "case_insensitive" unique not null,
      avatar text,
      password_hash bytea not null,
      created_at    timestamptz not null default now(),
      updated_at    timestamptz not null default now()
);
