DROP TABLE IF EXISTS 'game';

CREATE TABLE 'game'(
  'id' int(11) NOT NULL AUTO_INCREMENT,
  'status' varchar(50),
  PRIMARY KEY (id)
)

DROP TABLE IF EXISTS `probability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `probability` (
  `id` int(11),
  `ace` int(11) DEFAULT 4,
  `one` int(11) DEFAULT 4,
  `two` int(11) DEFAULT 4,
  `three` int(11) DEFAULT 4,
  `four` int(11) DEFAULT 4,
  `five` int(11) DEFAULT 4,
  `six` int(11) DEFAULT 4,
  `seven` int(11) DEFAULT 4,
  `eight` int(11) DEFAULT 4,
  `nine` int(11) DEFAULT 4,
  `ten` int(11) DEFAULT 16,
  `total` int(11) DEFAULT 52,
  FOREIGN KEY (id)
    REFERENCES game(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Probability`
--

LOCK TABLES `probability` WRITE;
/*!40000 ALTER TABLE `Probability` DISABLE KEYS */;
/*!40000 ALTER TABLE `Probability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrueCount`
--

DROP TABLE IF EXISTS `trueCount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trueCount` (
  `id` int(11),
  `total` int(11) DEFAULT '52',
  `decks` int(11) DEFAULT '1',
  `running` int(11) DEFAULT '0'
  FOREIGN KEY (id)
    REFERENCES game(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrueCount`
--

LOCK TABLES `trueCount` WRITE;
/*!40000 ALTER TABLE `TrueCount` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrueCount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-20  9:42:04
