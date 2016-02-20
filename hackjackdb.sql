use hackjack;

DROP TABLE IF EXISTS game;

CREATE TABLE game(
  id int(11) NOT NULL AUTO_INCREMENT,
  status varchar(50),
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS probability;

CREATE TABLE probability (
  id int(11),
  ace int(11) DEFAULT 4,
  one int(11) DEFAULT 4,
  two int(11) DEFAULT 4,
  three int(11) DEFAULT 4,
  four int(11) DEFAULT 4,
  five int(11) DEFAULT 4,
  six int(11) DEFAULT 4,
  seven int(11) DEFAULT 4,
  eight int(11) DEFAULT 4,
  nine int(11) DEFAULT 4,
  ten int(11) DEFAULT 16,
  total int(11) DEFAULT 52,
  FOREIGN KEY (id)
    REFERENCES game(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS trueCount;
CREATE TABLE trueCount (
  id int(11),
  total int(11) DEFAULT 52,
  decks int(11) DEFAULT 1,
  running int(11) DEFAULT 0,
  FOREIGN KEY (id)
    REFERENCES game(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
