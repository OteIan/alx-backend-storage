-- Creates an index
DROP INDEX IF EXISTS idx_name_first;

CREATE INDEX idx_name_first ON names(name(1));