-- Add down migration script here
drop extension if exists "uuid-ossp";
drop function if exists set_updated_at;
drop function if exists trigger_updated_at;
drop collation if exists case_insensitive;
