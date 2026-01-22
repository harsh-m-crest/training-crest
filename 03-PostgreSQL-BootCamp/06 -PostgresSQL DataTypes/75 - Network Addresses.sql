-- 75. Network Addresses

-- Create Table
CREATE TABLE table_netaddr(
	id SERIAL PRIMARY KEY,
	ip INET
);

-- 2. Lets Insert some data
INSERT INTO table_netaddr (ip) values 
('4.35.221.243'),
('4.152.207.126'),
('4.152.207.238'),
('4.249.111.162'),
('12.1.223.132'),
('12.8.192.60');

-- 3. Lets view the data
SELECT * FROM table_netaddr;

-- Analyse entries for /24 networks
-- set_masklen function : set netamsk length for the value
set_masklen(ip,28);

-- NETWORK ADRESSES
--- cidr -> ipv4 and ipv6 networks
--- inet -> ipv4 and ipv6 with host 
--- macaddr  -> mac adresses
--- macaddr8  -> mac adresses EUI-64 format 


CREATE TABLE ip(
	id SERIAL,
	ip INET
);

INSERT INTO	 ip(ip)
VALUES ('4.234.22.245'),
		('192.34.5.6')

SELECT * FROM ip

SELECT ip, set_masklen(ip,24)  AS "Masked" FROM table_netaddr  --- denote masked bits at the end 

SELECT ip, set_masklen(ip,24) AS "Masked", 
			set_masklen(ip::cidr,24) AS "CIDR" ,
			ip::cidr   --- By default masked bits 32
FROM itable_netaddr
