PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: input_groups
DROP TABLE IF EXISTS input_groups;
CREATE TABLE input_groups (grpName BLOB, enabled BOOLEAN DEFAULT (0));
INSERT INTO input_groups (grpName, enabled) VALUES ('Authorized', 0);
INSERT INTO input_groups (grpName, enabled) VALUES ('Sites', 0);
INSERT INTO input_groups (grpName, enabled) VALUES ('Playlists', 0);

-- Table: input_sources
DROP TABLE IF EXISTS input_sources;
CREATE TABLE input_sources (srcName BLOB UNIQUE, enabled BOOLEAN DEFAULT (0), grpName BLOB, prio INT DEFAULT (10) NOT NULL, prioMode BOOLEAN DEFAULT (0), addCh BOOLEAN DEFAULT (0), updPeriod INT DEFAULT (5) NOT NULL, updDate BLOB, links INT DEFAULT (0) NOT NULL, srcUrl BLOB);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('Grand', 0, 'Authorized', 7, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('Middle', 0, 'Authorized', 6, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('Small', 0, 'Authorized', 2, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('Zabava', 0, 'Sites', 1, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('IPnet', 0, 'Sites', 3, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('Telehub', 0, 'Sites', 10, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('VkluchiTV', 0, 'Sites', 10, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('TvFresh', 0, 'Sites', 10, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('StandartTV', 0, 'Sites', 10, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('VseTV', 0, 'Sites', 10, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('Peers', 0, 'Sites', 5, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('Voka', 0, 'Sites', 10, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('AdultTV', 0, 'Sites', 10, 0, 0, 5, NULL, 0, NULL);
INSERT INTO input_sources (srcName, enabled, grpName, prio, prioMode, addCh, updPeriod, updDate, links, srcUrl) VALUES ('HochuTV', 0, 'Sites', 10, 0, 0, 5, NULL, 0, NULL);

-- Table: live_links
DROP TABLE IF EXISTS live_links;
CREATE TABLE live_links (uLink BLOB UNIQUE, disabled BOOLEAN, live BOOLEAN);

-- Table: settings
DROP TABLE IF EXISTS settings;
CREATE TABLE settings (name BLOB, value BLOB);
INSERT INTO settings (name, value) VALUES ('ip', NULL);
INSERT INTO settings (name, value) VALUES ('port', NULL);
INSERT INTO settings (name, value) VALUES ('auto_ip', NULL);
INSERT INTO settings (name, value) VALUES ('ae_user', NULL);
INSERT INTO settings (name, value) VALUES ('ae_pass', NULL);
INSERT INTO settings (name, value) VALUES ('ch_sort', NULL);
INSERT INTO settings (name, value) VALUES ('upd_ch_start', NULL);
INSERT INTO settings (name, value) VALUES ('upd_ch_list', NULL);
INSERT INTO settings (name, value) VALUES ('del_ch', NULL);
INSERT INTO settings (name, value) VALUES ('usr_agent', NULL);
INSERT INTO settings (name, value) VALUES ('zbv_agent', NULL);
INSERT INTO settings (name, value) VALUES ('ts_buffer', NULL);
INSERT INTO settings (name, value) VALUES ('hls_buffer', NULL);
INSERT INTO settings (name, value) VALUES ('http_timeout', NULL);
INSERT INTO settings (name, value) VALUES ('hls_timeout', NULL);
INSERT INTO settings (name, value) VALUES ('hls_live_edge', NULL);
INSERT INTO settings (name, value) VALUES ('hls_segment_threads', NULL);
INSERT INTO settings (name, value) VALUES ('hls_playlist_reload_time', NULL);
INSERT INTO settings (name, value) VALUES ('hls_stream_data', NULL);
INSERT INTO settings (name, value) VALUES ('lic_key', NULL);
INSERT INTO settings (name, value) VALUES ('src_proxy', NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
