BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "patterns" (
	"ID"	INTEGER NOT NULL UNIQUE,
	"Name"	VARCHAR(78) NOT NULL UNIQUE,
	"Starting"	VARCHAR(33) NOT NULL,
	"Ending"	VARCHAR(40) NOT NULL,
	"One"	VARCHAR(140),
	"Onetwothree"	VARCHAR(157),
	"Two"	VARCHAR(30),
	"Twothree"	VARCHAR(109),
	"Three"	VARCHAR(16),
	"Four"	VARCHAR(81),
	"Five"	VARCHAR(90),
	"Five_six"	VARCHAR(92),
	"fivesixseven"	VARCHAR(230),
	"Six"	VARCHAR(20),
	"sixseven"	VARCHAR(138),
	"Seven"	VARCHAR(47),
	"Eight"	VARCHAR(88),
	"Picture"	VARCHAR(50),
	"Notes"	VARCHAR(220),
	"tags"	TEXT,
	PRIMARY KEY("ID"),
	FOREIGN KEY("Ending") REFERENCES "positions"("ID"),
	FOREIGN KEY("Starting") REFERENCES "positions"("ID")
);
CREATE TABLE IF NOT EXISTS "positions" (
	"ID"	VARCHAR(4) NOT NULL UNIQUE,
	"Name"	VARCHAR(52) UNIQUE,
	"Picture"	VARCHAR(137),
	"Type"	VARCHAR(10),
	"tags"	TEXT,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "vocab" (
	"ID"	VARCHAR(11) NOT NULL UNIQUE,
	"Name"	VARCHAR(44) NOT NULL,
	"tags"	TEXT,
	PRIMARY KEY("ID")
);
INSERT INTO "patterns" VALUES (1,'Solo Basic Step','A3','A3','Basic Step',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'paste-e530301eb1fe87a365f92fc711b7ce4d16e8d1f5.jpg',NULL,'apart');
INSERT INTO "patterns" VALUES (2,'Solo Follower R Turn','A3','A3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'360° CW Turn',NULL,NULL,NULL,NULL,'paste-7dcbc63584d8145a099f12c0fe68fb45c56758f6.jpg',NULL,'apart');
INSERT INTO "patterns" VALUES (3,'Follower Solo L Turn','A3','A3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'360° CCW Turn',NULL,NULL,NULL,NULL,'paste-40a98c70b54a58f38c8896873ca90eb60644f1f1.jpg',NULL,'apart');
INSERT INTO "patterns" VALUES (4,'solo Half R Turn','A3','A3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'180° CW Turn',NULL,NULL,NULL,NULL,'paste-ecc0a94abf438be3375c7d1a809e54b22c62bf27.jpg',NULL,'apart');
INSERT INTO "patterns" VALUES (5,'solo Half L Turn','A3','A3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'180° CCW Turn',NULL,NULL,NULL,NULL,'paste-989e1e64c4a6a94a535355b6b108c4f90e27b9ce.jpg',NULL,'apart');
INSERT INTO "patterns" VALUES (6,'Solo 1 1/2 R Turn','A3','A3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'540° CW Turn',NULL,NULL,NULL,NULL,'paste-1455ba19896435dbea47fb73d89635bbaf972674.jpg',NULL,'apart');
INSERT INTO "patterns" VALUES (7,'solo 1 1/2 L Turn','A3','A3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'540° CCW Turn',NULL,NULL,NULL,NULL,'paste-f29430f910c1c1d663d85b57fd9249ddf1219ecb.jpg',NULL,'apart');
INSERT INTO "patterns" VALUES (8,'Follower R Turn in Place from Closed Position','M1','M1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Follower 360° CW Turn in Place',NULL,NULL,NULL,NULL,'paste-f29a7df17a436e05d55a3131c1d5992042121c6e.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (9,'Cross Body Lead with Inside Turn','M1','O3',NULL,'Leader initiates Cross Body Lead',NULL,NULL,NULL,NULL,NULL,NULL,'Follower spins 540° CCW under LLH while passing Leader''s LHS',NULL,NULL,NULL,NULL,'paste-b6e96229a8455de4cdf97293376e54849126090c.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (10,'Open to Open via Follower R Turn in Place','O1','O1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Follower spins CW 360° in place.',NULL,NULL,NULL,NULL,'paste-38a61ac6a6a412299b2cad6938bf57521cb07d89.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (11,'Open to Open via Cross Body Inside Turn','O1','O1',NULL,'Leader initiates Cross Body Lead',NULL,NULL,NULL,NULL,NULL,NULL,'Follower spins CCW 540° by Leader''s LHS.*',NULL,NULL,NULL,NULL,'paste-0be44f769110ccabae96927d12a845db6dd35192.jpg','* The total rotation of Follower is 540° due to the added half rotation required by the exchange of position.',NULL);
INSERT INTO "patterns" VALUES (12,'Open to Half Open L to R via Follower R Turn in Place','O1','O3',NULL,'LRH releases',NULL,NULL,NULL,NULL,NULL,NULL,'Follower spins CW 360° in place under LLH',NULL,NULL,NULL,NULL,'paste-32219a14172b00c2a45edebe4ca17414307bad97.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (13,'Follower R Turn in Place into Handshake','O3','O8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Follower R Turn in Place',NULL,NULL,NULL,NULL,'paste-93a3916e9cadc02cd067f07f8059eb6933230c49.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (14,'Basic Step in Closed Position','M1','M1','Basic Step with Leader forwards on 1 and Follower back on 1','Leader steps forward and back while Follower steps back and forward',NULL,NULL,NULL,NULL,NULL,NULL,'Leader steps back and forward while Follower steps forward and back',NULL,NULL,NULL,NULL,'paste-f107b139e3c6f97254e9c398d0e3f22776b5b991.jpg','Screen Shot 2022-10-25 at 11.52.23 PM.png See Demonstration of Apart Positions',NULL);
INSERT INTO "patterns" VALUES (15,'Closed to Handshake via Follower R Turn in Place, Leader Switch Hands','M1','O8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Follower spins CW 360° in place under LLH',NULL,NULL,NULL,'Leader releases RH, Leader places Follower RH in Leader RH','paste-27f46ea53b4253ea2c1a285e66c42e6a02bc0ada.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (16,'Handshake to Closed via Reversed Cross Body R Turn','O8','M1','Open Break',NULL,NULL,'Leader pulls Follower RH forwards through the slot',NULL,'Leader LH checks Follower R arm gently at the elbow, leading Follower into R Turn',NULL,NULL,'Follower passes by Leader''s LHS, spinning CW 540°, exchanging position',NULL,NULL,'Leader switches hand, placing FRH into LLH','Leader moves into closed position.','paste-ec3669d1ab88fc098c70de00d2b68587586b78db.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (17,'Closed to Closed via Cross Body Lead','M1','M1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cross Body Lead, Follower passes Leaders LHS',NULL,NULL,NULL,NULL,'paste-06e77cacedc06c05e6fa8f6d12ed373560f2cb1a.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (18,'Leader L Turn in Place, R Comb into R Neck Loop','O1','NL1',NULL,'Leader releases LH, Leader Turn CCW 3600 in place under Leader RH,',NULL,NULL,NULL,NULL,NULL,NULL,'Leader performs R Neck Loop, combing Leader RH and Follower LH over Follower head',NULL,NULL,NULL,NULL,'paste-10e14c697239805034124663bda69dcf6ce535a4.jpg','Option: Leader may check Follower shoulder or arm with LH to prevent Follower from misinterpreting comb as a turn',NULL);
INSERT INTO "patterns" VALUES (19,'Neck Loop Unwind and Rewrap into Hammerlock','NL1','HL3',NULL,'Leader RH pulls down and then forwards, Follower turns 540°CW by Leader''s LHS',NULL,NULL,NULL,NULL,NULL,NULL,'Leader RH &amp; Follower LH remain at waist level through turn',NULL,NULL,NULL,NULL,'paste-74fb7cc72408729b4caefeaca90b0b6ab3cf66cd.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (20,'Half Hammerlock Unwind and Retract into R Arm Hook','HL3','AH1','Open Break',NULL,NULL,'Follower unwinds across Leader''s RHS. Follower rotates CCW 180°, Leader rotates CW 180°, exchanging position',NULL,'Leader and Follower extend and begin to retract',NULL,NULL,NULL,NULL,'Leader bends R arm at elbow, Follower LH behind Leader R shoulder; Follower simultaneously rotates CW 180°, ending up at Leader''s RHS, LIF',NULL,NULL,'paste-28213791c4015767044b0ccad92939472ce2cac2.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (21,'Unwind from R Arm Hook with Traveling Left Turn','AH1','O2','Follower spins 5400CCW while traveling across Leader''s RHS. Option: Leader twists 45° CCW at the waist up to suggest the direction of travel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'paste-126f541b0a64abbf2b501107105bc17c7a06e21f.jpg','Screen Shot 2022-10-25 at 11.46.57 PM.png',NULL);
INSERT INTO "patterns" VALUES (22,'Open to Hammerlock via Follower R Turn in Place','O1','HL1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Follower Turn CW 360° in place, Leader LH stays high, Leader RH drops to waist level',NULL,NULL,NULL,NULL,'paste-0cb91427e460ec7992adb9c8bb14fd2f24a22671.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (23,'Hammerlock Self Basket','HL1','W4','Open Break',NULL,NULL,'Follower rotate 180° CCW while passing to Leader''s RHS, exchanging position, ending in extended open position',NULL,NULL,NULL,NULL,'Leader walks left around Follower''s RHS, keeping RH high &amp; LH low, wrapping LLH across front of Leader''s body',NULL,NULL,NULL,NULL,'paste-dd49bebc0459968cbaec7e6b2b0f72ebaa1308fb.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (24,'Unwind the Wrap','W1','O2','Leader releases LH, Leader RH pulls Follower around Leaders LHS, Follower spins cw 540°',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'paste-8915b0149c1c0a0d754156e1c5b379bde4b09fe7.jpg','Screen Shot 2022-10-25 at 11.47.11 PM.png',NULL);
INSERT INTO "patterns" VALUES (25,'Self Wrap &amp; Unwind','O2','O3',NULL,'Leader rotates in place CW 180°, looks over LRS, offers LLH to Follower above LRS.',NULL,NULL,NULL,NULL,NULL,NULL,'Follower puts RH into Leader LH, spins CCW 540° while traveling by LRHS',NULL,NULL,NULL,NULL,'paste-cd82fc3d5e157899cca51304431a0294a1e17cca.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (26,'Two-handed Cross Body Turn into Wrap','M1','W4','Two-handed cross body turn with Follower performing a left turn, 360° ccw','CBL prep',NULL,NULL,NULL,NULL,NULL,NULL,'Follower spins CCW 360° across LLHS under LRH Both pairs of hands at high level during turn Hands drop to waist level after turn Hands stay connected throughout',NULL,NULL,NULL,NULL,'paste-8b39b45f12c858a5296103ae240803a544fe8032.jpg','Screen Shot 2022-10-25 at 11.47.18 PM.png',NULL);
INSERT INTO "patterns" VALUES (27,'Wrap to Hammerlock','W4','HL1','Leader LH rises high &amp; RH remains waist level. Follower spins in place CW 540° Hands stay connected throughout','Follower rotates CW 180°',NULL,NULL,NULL,'FEO, parallel hold, LLH high &amp; LRH low',NULL,NULL,'Follower spins cw 360°',NULL,NULL,NULL,NULL,'paste-143e6fc3fbe69b91266ac1e35893a24584c9a819.jpg','Screen Shot 2022-10-25 at 11.47.21 PM.png',NULL);
INSERT INTO "patterns" VALUES (28,'From Hammerlock into Neck Loop with Comb','HL1','NL1',NULL,'Reverse CBL Prep',NULL,NULL,NULL,NULL,NULL,NULL,'Follower rotates CW 180° under LLH across LRHS, into Open Position',NULL,NULL,NULL,'Leader pulls Follower closer, performing a RH Comb into R Neck Loop','paste-9c23879285e676886af200437cf10a67955169f6.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (29,'Neck Loop Unwound via Inside Turn','NL1','O2',NULL,'CBL Prep',NULL,NULL,NULL,NULL,NULL,NULL,'Follower spins CW 540° across Leader LHS under LRH',NULL,NULL,NULL,NULL,'paste-ca0d8e578c48e18937ad7105b89abff8251f2c6d.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (30,'Hammerlock Unwind and Self-Comb into Leader L Self Neck Loop','HL1','NL6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Follower CCW 180° across Leader''s RHS into Open position with Parallel Hold',NULL,NULL,NULL,'Leader Self Combs with LH into Leader L Self Neck Loop; Follower RH resting on Leader LS','paste-8ce8b0f6a372a06e011ca8fe57cef8de391119ba.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (32,'Handshake to Half Open via Cross Body 1 1/2 Turn','O8','O3','Follower passes by LLHS, spinning CCW 540°, exchanging position with Leader.','Half Basic',NULL,NULL,NULL,NULL,NULL,NULL,'Follower spins CCW 540° across Leader''s LHS',NULL,NULL,NULL,'Leader switches hand, grabbing FLH with LRH','paste-4046e3e14c9c18da7b49ae3784a9d995ba474261.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (33,'Two Hand R Turn in Place into Crossed Parallel Hold','O1','O11','Follower right turn in place, CW 360°',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'paste-df6769cc2b71a4dbd112383ae480a41984c3b59e.jpg','Screen Shot 2022-10-25 at 11.47.50 PM.png',NULL);
INSERT INTO "patterns" VALUES (34,'Crossed Parallel Hold with Double Handed R Turn into FSD LIF Same Hand','O11','M5',NULL,'open Break, Leader and Follower extend and rebound Follower rotates CCW 180° across RHS of Leader At height of turn, dancers are FSD LIB End in open position',NULL,NULL,NULL,NULL,NULL,NULL,'Leader Half R Turn under LLH LRH &amp; FLH remain at waist level while Leader self combs LLH &amp; FRH, simultaneously spinning 180° cw LLH and FRH drop to waist level, ending in Wrap FSD LIF',NULL,NULL,NULL,'Leader switches both hands','paste-d8f2e92693504e68472cbc301f4d4a3875ea0382.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (35,'FSD LIF Same Hand into L to L Hammerlock via R Turn','M5','HL4','Leader steps forwards, Follower steps back Leader and Follower extend and retract',NULL,NULL,'Leader LH pulls follower around Leader LHS, releasing RH',NULL,NULL,NULL,NULL,'Follower spins CW 540° LH''s remain at waist level as they wrap around Follower''s waist',NULL,NULL,NULL,NULL,'paste-9b521f4ee6236aa75809143d03ccdd20a193a692.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (36,'L to L Hammerlock to Closed via Inside Turn and Comb','HL4','M1',NULL,'Follower rotates 180° CCW across Leader RHS',NULL,NULL,NULL,NULL,NULL,NULL,'LLH combs FLH, draping FLH onto LRS, moving into closed position FLH slides down LRS into LRH',NULL,NULL,NULL,NULL,'paste-e3fc5a7c986b06d3b01b58dfb24d007994cba0b4.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (37,'From Crosshold to Reverse Crosshold via R Turn in Place','O7','O9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Follower turns CW 360° in place',NULL,NULL,NULL,NULL,'paste-8276b8a4426e0c3d50afd5eb294a476fe75a5913.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (38,'Reverse Crosshold to Butterfly via 2 Handed Turn with Exchange','O9','B1','Open Break','Leader rotates CW 180° while traveling to the left, Follower rotates CCW 180° while traveling by Leader''s RHS; during turn LRH high &amp; LLH low',NULL,NULL,NULL,NULL,NULL,NULL,'Leader turns CW an additional 180° under RH, moving to the left around Follower, rotating a total of 360° from original position  Hands remain connected through entire pattern',NULL,NULL,NULL,NULL,'paste-3879476266813fce327a244a6cf1b8521da4a9af.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (39,'Butterfly Reversal via a Comb and Opposite Turns','B1','B1',NULL,'Leader comb LRH to LLS (into L Half Butterfly R Self Neck Loop LIF)',NULL,NULL,NULL,NULL,'Leader turns CCW 180°, raises LRH over Follower',NULL,NULL,NULL,'Follower turns CW 180° , hands spread wide',NULL,NULL,'paste-273c8d979fc52fd52c7ab106bb099eaccce08a5f.jpg','Hands remain connected through entire pattern',NULL);
INSERT INTO "patterns" VALUES (40,'Butterfly to Reverse Crosshold via L and R Turns','B0','O9',NULL,'Follower rotates CCW 180°',NULL,NULL,NULL,NULL,NULL,NULL,'Follower turns CW 360°',NULL,NULL,NULL,NULL,'paste-f15c20f532c93e47bb17f70ceaf784536b7f6260.jpg','Hands remain connected through entire pattern',NULL);
INSERT INTO "patterns" VALUES (41,'Crossed Parallel Hold to Open via Cross Body 180° L Turn','O11','O1',NULL,'Open break',NULL,NULL,NULL,NULL,NULL,NULL,'Cross body half turn',NULL,NULL,NULL,NULL,'paste-39b9113e5b2a7869a7108e311ca0c86b1d3e61ee.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (42,'Open the Window','O1','O3',NULL,'Window Arm Turn (Leader R Turn under L Arm Window)',NULL,NULL,NULL,NULL,NULL,NULL,'Follower R Turn in Place under LLH',NULL,NULL,NULL,NULL,'paste-70c60b5e5ad0c6e39b2b75c09c0ef0d3b07afdc2.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (43,'Left Comb with Shoulder Spin','O1','A3',NULL,'LLH combs FRH, ending with LLH resting on FLS',NULL,NULL,NULL,NULL,NULL,NULL,'LLH gently pulls FLS; Follower spins CW 360°',NULL,NULL,NULL,NULL,'paste-e6838be54af4565b2c6e2ccea60f2d7ff8771c7a.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (44,'Leader R Turn in Place','A3','A3',NULL,'Leader spins 360° cw',NULL,NULL,NULL,NULL,NULL,NULL,'Basic Step',NULL,NULL,NULL,NULL,'paste-2141187177ea237b0cb1e949bee24b001df2bf81.jpg',NULL,'apart');
INSERT INTO "patterns" VALUES (45,'Crosshold Hammerlock','O7','HL7',NULL,'CBL prep',NULL,NULL,NULL,NULL,NULL,NULL,'Follower CW 540° across Leader''s LHS  Starts out like hammerlock, FLH wraps around Follower''s back  Follower continues spinning beyond 180°  After 180° LLH releases FLH  LLH remains on Follower''s waist, regrabbing FLH',NULL,NULL,NULL,NULL,'paste-3d5c9534955ec4c0dc96e6d7afdceb90691b1efc.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (46,'Hammerlock Butterfly','HL7','O9',NULL,'Follower CCW 360° across Leader''s LHS  Follower unwraps across Leader''s LHS  because Leader is simultaneously rotating L, Follower and Leader end FSD',NULL,NULL,NULL,'Butterfly LOL',NULL,NULL,'Follower travels forwards spinning CW 180° Follower rotates L on [1,2,3], R on [5,6,7]',NULL,NULL,NULL,NULL,'paste-f45dd7fcb7457195ce6328e33568c0574d377e57.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (47,'Revolving Butterfly','O9','O10',NULL,'Leader rotates CCW&nbsp;180° into Butterfly FSD LIF',NULL,NULL,NULL,NULL,NULL,NULL,'Leader rotates CCW 180°  Dancers remain coupled as they exchange position',NULL,NULL,NULL,'Leader releases RH, rotates CCW an additional 180°','paste-37804d37e29ebd710df75a021904346d4f98f87a.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (48,'Comb into Half Closed then CBL','O10','O3',NULL,'Leader Self Comb LLH &amp; FLH  Closes into half-closed position',NULL,NULL,NULL,NULL,NULL,NULL,'CBL',NULL,NULL,NULL,NULL,'paste-0890a164439a5af438ec07586ea7c1bda182ee80.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (49,'Open into Cuddle LOL','O10','W5',NULL,'Half Basic Step',NULL,NULL,NULL,NULL,NULL,NULL,'Follower steps forwards to Leader''s RHS while rotating 180° CCW under LLH',NULL,NULL,NULL,NULL,'paste-ee3320b237936527413283231dfa9dd48a05eb40.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (50,'Cuddle LOL to L to L Hammerlock','W5','HL4','Back Step',NULL,NULL,'Leader releases LLH',NULL,NULL,NULL,NULL,'Follower steps forwards while rotating cw 540°',NULL,'Leader switches hands from LRH-FLH to LLH-LFH',NULL,NULL,'paste-dff3ae83a97a2b26208c5e15423f083f5fca1559.jpg','LLH can be used to gently suggest the backstep for Follower on 1, and again to suggest Follower''s subsequent forward travel and right turn.',NULL);
INSERT INTO "patterns" VALUES (51,'L to L Hammerlock Unwind and Exchange','HL4','O10',NULL,'CBL prep',NULL,NULL,NULL,NULL,NULL,NULL,'Follower passes by Leader LHS, CB L Turn, 540°ccw',NULL,NULL,NULL,NULL,'paste-88d517f17badfed74d2916d926f2b24fed0680a9.jpg','This differs from Pattern 36 where Follower passes by Leader RHS, performing only a 1/2 L turn instead ofa 1 1/2 L Turn as is done here. Here, Follower passes Leader''s LHS, allowing that extra rotation on Follower''s CBT.',NULL);
INSERT INTO "patterns" VALUES (56,'CBL into Handshake From Closed&nbsp;Position','M1','O8',NULL,'Half Basic Step',NULL,NULL,NULL,NULL,NULL,NULL,'CBL',NULL,NULL,NULL,'Leader places FRH in LRH','paste-172e9d6b9eb828e76388a8cb5dad1cb26e70d3a6.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (57,'Handshake to Reverse Crosshold','O8','O9',NULL,'half basic step',NULL,NULL,NULL,NULL,NULL,NULL,'Follower R Turn in Place, LLH is offered, LLH/LRH',NULL,NULL,NULL,'FLH in LLH','paste-b7728819fc476afd5053b82d7599b60bc18d37d2.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (58,'Reverse Crosshold to Butterfly FSD LIB','O9','B0',NULL,'CBL prep',NULL,NULL,NULL,NULL,NULL,NULL,'Follower CCW 360° across Leader''s LHS',NULL,NULL,NULL,'Leader spreads Follower''s arms','paste-93245b470bc07363c800296547639afdd4577abc.jpg','This is the inverse of Pattern 40',NULL);
INSERT INTO "patterns" VALUES (59,'Butterfly FSD LIB to Closed via 1 1/2 R Turn in Place','B0','M1',NULL,'Half Basic Step',NULL,NULL,'LLH releases FLH',NULL,NULL,NULL,'Follower spins CW 540° in place',NULL,NULL,NULL,'LRH places FRH into LLH, closes into Closed Position','paste-a771b59a12c4d82e7e831cff6c29fa8d62cd0c02.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (60,'Handshake to Reverse Crosshold Butterfly','O8','B7','','Crossbody Prep',NULL,NULL,NULL,NULL,NULL,NULL,'LRH remains low as Follower passes Leader LHS, Follower spins 3600 CCW',NULL,NULL,'LRH &amp; FRH rise, LLH checks FLS to halt turn',NULL,'paste-127ff7edbf3b22e0ae08ac2efc22d47a24268aa2.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (61,'R Half Butterfly to Handshake via R Turn in Place','B7','O8',NULL,'half basic step',NULL,NULL,NULL,NULL,NULL,NULL,'LRH rises, Follower spins 540° CW in place',NULL,NULL,NULL,NULL,'paste-89052090df3c90706ec39ed202859c2c23474113.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (62,'Rev Handshake to L Half Butterfly via Crossbody L Turn','O10','B8',NULL,'&nbsp;Crossbody Prep, LLH draws FLH forwards through slot across Leader''s LHS',NULL,NULL,NULL,NULL,NULL,NULL,'Follower 360° ccw',NULL,NULL,NULL,'LRH checks FLS, LLH extends FLH','paste-0420a7052b4645ff8dcfcfc00d127109574d54ec.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (63,'L Half Butterfly to Closed via R Turn in Place and Self-Comb','B8','M1',NULL,'Crossbody Prep, LRH raws FRS backwards',NULL,NULL,NULL,NULL,NULL,NULL,'Follower 540° CW',NULL,NULL,NULL,'LLH self combs FLH onto LRS','paste-aedfe581fbdf49ff6b4533aeb0fb0f21431b01a1.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (64,'Crosshold to Butterfly FSD LIF via 1 1/2 R Traveling Turn','O7','B1',NULL,'Open Break',NULL,NULL,NULL,NULL,NULL,NULL,'Follower spins CW 540° across Leader''s RHS, while Leader walks forwards',NULL,NULL,NULL,'&nbsp;Leader spreads arms and drops them below waist','paste-f7f1dacdc36be61b54fd80238897e453154385d2.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (65,'Butterfly FSD LIF to Butterfly FSD LIB via Traveling R Turn','B1','B0',NULL,'LLH rises above head, LRH stays at waist level, outstretched, pulling Follower forwards across Leaders RHS',NULL,NULL,NULL,'SBS LOL LLH at head level LRH at waist level',NULL,NULL,'LLH high, LRH waist level as Follower spins CCW 360° across Leader''s RHS',NULL,NULL,NULL,'Leader spreads arms and drops them below waist level','paste-d6fda1581476f089d707be4accd7820e83f9f3e6.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (66,'Butterfly FSD LIB to Reverse Crosshold via L and R Turn in Place','B0','O9',NULL,'Leader raises hands above head',NULL,NULL,NULL,NULL,NULL,NULL,'Follower spins CW 540° in place',NULL,NULL,NULL,'Leader drops hands to waist level','paste-09e96400392b629b1378dfd8f451af2615331052.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (67,'Switchhands into Crosshold via CBL','O3','O7','CBL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'paste-7a456e8a56f9ca1df1bcf82099f88cb41c522804.jpg','Screen Shot 2022-10-25 at 11.53.34 PM.png',NULL);
INSERT INTO "patterns" VALUES (68,'Walk into Butterfly, Back into R to R Hammerlock','O9','HL5',NULL,'&nbsp;CBL prep, pulling Follower through the slot across Leader''s RHS into Butterfly FSD LIB',NULL,NULL,NULL,NULL,NULL,NULL,'Leader guides Follower backwards to the Leader''s RHS, LRH &amp; FRH going behind Follower''s back',NULL,NULL,NULL,'LLH releases FLH (OPTIONAL: LLH combs FLH over Follower''s head)','paste-ef400125ee8d91a64048e7ce0d95f7634fa189b2.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (69,'Exit Hammerlock via Crossbody 1 1/2 R Turn','HL5','O3',NULL,'CBL prep, pulling Follower through the slot across Leader''s LHS, Leader switches hand during turn, placing FRH into LLH as Follower passes across',NULL,NULL,NULL,NULL,NULL,NULL,'LLH &amp; FRH rise above head level, Follower spins cw 540°',NULL,NULL,NULL,NULL,'paste-3cd916cf10c65f1ed3851bbb5a1f1ed4286fd8e3.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (70,'Switchhands into Crosshold via CBL 2','O1','O9',NULL,'LRH to FRH',NULL,NULL,NULL,NULL,NULL,NULL,'LLH to FLH',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "patterns" VALUES (71,'Butterfly FSD LIB to Handshake via 1 1/2 R Turn in Place','B0','O8','Follower steps forwards, Rotates 45° CCW',NULL,NULL,'Follower Steps Back, Rotates 45° CW',NULL,NULL,NULL,NULL,'LLH Follower spins cw 540°',NULL,NULL,NULL,NULL,'paste-c3128276f8661ffa47390c74d5feaab3c701f140.jpg','This pattern is similar to Pattern 66',NULL);
INSERT INTO "patterns" VALUES (72,'Butterfly FSD LIB to Butterfly LOL','O3','O7','CBL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'paste-5285ccda165f327a41548888f42bdfdfa84a0a8e.jpg','Screen Shot 2022-10-25 at 11.53.52 PM.png',NULL);
INSERT INTO "patterns" VALUES (73,'Butterfly LOL to Handshake via 1 1/2 R Turn','O3','HL5',NULL,'CBL prep, pulling Follower through the slot across Leader''s RHS into Butterfly FSD LIB',NULL,NULL,NULL,NULL,NULL,NULL,'Leader guides Follower backwards to the Leader''s RHS, LRH &amp; FRH going behind Follower''s back',NULL,NULL,NULL,'LLH releases FLH (OPTIONAL: LLH combs FLH over Follower''s head)','paste-cfa2ca0ef7a58f602b0ca3d05a55008152037733.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (74,'Handshake to SBS R to R Hammerlock SBS LOL','O8','HL11',NULL,'Half Basic',NULL,NULL,NULL,NULL,NULL,NULL,'Leader walks backwards on each step, pulling Follower forwards, LRH rotates CW via an "Open the Doorknob" hand gesture. This induces FRH to go behind Follower as Follower rotates CCW 180°. LRH &amp; FRH end behind Follower''s back.',NULL,NULL,NULL,'LRH rotates CW so that LRH &amp; FRH are palm-to-Palm. LLH offered to FLH','paste-1b0bb073435c7b3ce89b275ca2dfbfbd960eaf4f.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (75,'R to R Hammerlock SBS LOL to Reverse Crosshold','HL11','O9',NULL,'Back Step, Half Basic',NULL,NULL,NULL,NULL,NULL,'Leader steps forwards, LLH &amp; FLH remain mid to low level as Follower also steps forwards',NULL,NULL,NULL,'LLH rises, turns Follower cw 180°','LRH adjusts hold, by rotating CW across top of FRH','paste-0cf4c4879ec5c86dfc689cfff9928b2852568e84.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (76,'Reverse Crosshold to Crosshold via Butterfly','O9','O7',NULL,'LLH rises above head as Leader rotates CCW 180° into Butterfly FSD LIF',NULL,NULL,NULL,NULL,'Leader continues rotating CCW, LRH pulling Follower across LRHS, Follower rotates 180° CCW',NULL,'Leader and Follower revolve around each other, then Leader rotates into FEO','LRH drops FRH on LRS',NULL,'Leader rotates CCW an additional 180°, FEO','LRH offers above LLH','paste-8086bac0fec7f6cb0201b4a13be797217f2a11f8.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (77,'Crosshold to Apart FEO via Double Comb','O7','A3',NULL,'double Comb over Follower''s head. LLH &amp; LRH drop to Follower''s hips.',NULL,NULL,NULL,NULL,NULL,NULL,'Leader spins Follower CW 360° Option : Either in-Place or exchange position',NULL,NULL,NULL,NULL,'paste-90dfc19dd595c7d9e3ef4b744bb06be54cf96afa.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (92,'Crosshold to Butterfly FSD LIF via Leader 1/2 R Turn in Place','O7','B1',NULL,'Basic Step',NULL,NULL,NULL,NULL,NULL,NULL,'LRH rises high as Leader rotates 180° CW in place',NULL,NULL,NULL,NULL,'paste-1590042cf37e805fbb23b1c96acb2e9c8433de58.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (93,'Reverse Crosshold to Butterfly FSD LIF via Leader 1/2 L Turn in Place','O9','B1',NULL,'Basic Step',NULL,NULL,NULL,NULL,NULL,NULL,'LLH rises high as Leader rotates 180° CCW in place',NULL,NULL,NULL,NULL,'paste-f9a4e1f18016a890077ccd673a2b563fbad512f1.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (94,'Follower walk through into Butterfly','O7','B0',NULL,'CBL prep, as Leader rotates 90° CCW',NULL,NULL,NULL,NULL,NULL,NULL,'LLH stays low, LRH rises high, Leader rotates an additional 90° CCW as Follower walks forwards across LLHS under LRH',NULL,NULL,NULL,'Leader spreads Follower''s arms','paste-2d14e9a3f9930351ea3fd494391e1f830932fe54.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (95,'Reverse Crosshold to Butterfly FSD LIB via Reverse CBL','O9','B0',NULL,'Reverse CBL prep, as Leader rotates 90° CW',NULL,NULL,NULL,NULL,NULL,NULL,'LRH stays low, LLH rises high, Leader rotates an additional 90° CW as Follower walks forwards across LRHS under LLH',NULL,NULL,NULL,'Leader spreads Follower''s arms','paste-563fc44f32bba752fc3b19d12be8c4a55db3e00d.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (96,'Butterfly FSD LIF to Crosshold via Traveling R Turn','B1','O7',NULL,'LLH self combs into R Half Butterfly L Self Neck Loop',NULL,'Leader pulls Follower forwards across LRHS with LLH at head level and LRH outstretched at waist level',NULL,'SBS LOL LLH at head level LRH at waist level',NULL,NULL,'LRH and LLH rise to high level as Follower spins CCW 720° across Leader''s RHS under LLH and LRH',NULL,NULL,NULL,NULL,'paste-396a3300dff580e30b62d546a347ea0465f3a651.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (97,'Butterfly FSD LIF to Reverse Crosshold via Traveling R Turn','B1','O9',NULL,'LRH self combs into L Half Butterfly R Self Neck Loop',NULL,'Leader pulls Follower forwards across LLHS with LRH at head level and LLH outstretched at waist level',NULL,'SBS LOL LLH at head level LRH at waist level',NULL,NULL,'LRH and LLH rise to high level as Follower spins CCW 720° across Leader''s RHS under LLH and LRH',NULL,NULL,NULL,NULL,'paste-916246c41fc0540b8708db3b7330c2722715c318.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (102,'Butterfly FSD LIB to L to L Hammerlock via 1 1/2 R Turn in Place (Pattern 102)','B1','HL4',NULL,'Basic Step, hands lower, then LLH &amp; FLH to Follower waist, LRH &amp; FRH go high',NULL,NULL,NULL,NULL,NULL,'Follower Rotates 180° CW under LRH; LLH releases, LLH &amp; FLH remain at Follower waist','LLH regrabs FLH, Follower spins CW 360°, LRH combs FRH to FRS',NULL,NULL,NULL,NULL,'paste-1e6b93dffb74c962a4f3ac70fbaacaa90dde0dfc.jpg',NULL,NULL);
INSERT INTO "patterns" VALUES (104,'Butterfly to Butterfly LOL via Crosshold Hammerlock','B0','B9',NULL,'Hands drop low, LLH &amp; FLH go to Follower waist, Follower rotates CW 180° in place into Crosshold Hammerlock',NULL,NULL,NULL,NULL,NULL,'Follower walks forwards to LRHS',NULL,NULL,NULL,'Follower rotates CCW 180°',NULL,'paste-003cfbe5191d1896241c53fe5b3b10e56786527e.jpg','Interesting because Follower rotates one direction on [1,2,3], the other direction on [5,6,7]',NULL);
INSERT INTO "positions" VALUES ('A1','Apart SBS FSD LOL','Screen Shot 2022-10-23 at 10.53.17 PM.png','apart',NULL);
INSERT INTO "positions" VALUES ('A2','Apart SBS FSD LOR','Screen Shot 2022-10-23 at 10.53.45 PM.png','apart',NULL);
INSERT INTO "positions" VALUES ('A3','Apart FEO','Screen Shot 2022-10-23 at 10.54.13 PM.png','apart',NULL);
INSERT INTO "positions" VALUES ('A4','Apart FSB LIB','Screen Shot 2022-10-23 at 10.54.25 PM.png','apart',NULL);
INSERT INTO "positions" VALUES ('A5','Apart FSD LIF','Screen Shot 2022-10-23 at 10.54.39 PM.png','apart',NULL);
INSERT INTO "positions" VALUES ('A6','Apart SBS FOD LOR','Screen Shot 2022-10-23 at 10.54.54 PM.png','apart',NULL);
INSERT INTO "positions" VALUES ('A7','Apart SBS FOD LOL','Screen Shot 2022-10-23 at 10.55.11 PM.png','apart',NULL);
INSERT INTO "positions" VALUES ('O1','Open Position','Screen Shot 2022-10-23 at 10.55.24 PM.png','open',NULL);
INSERT INTO "positions" VALUES ('O2','Half Open R to L','Screen Shot 2022-10-23 at 10.55.34 PM.png','open',NULL);
INSERT INTO "positions" VALUES ('O3','Half Open L to R','Screen Shot 2022-10-23 at 10.55.51 PM.png','open',NULL);
INSERT INTO "positions" VALUES ('O4','Extended Open','Screen Shot 2022-10-23 at 10.56.10 PM.png','open',NULL);
INSERT INTO "positions" VALUES ('O5','Extended Half Open R to L','Screen Shot 2022-10-23 at 10.56.24 PM.png','open',NULL);
INSERT INTO "positions" VALUES ('O6','Extended Half Open L to R','Screen Shot 2022-10-23 at 10.56.36 PM.png','open',NULL);
INSERT INTO "positions" VALUES ('O7','Crosshold Position','Screen Shot 2022-10-23 at 10.56.47 PM.png','open',NULL);
INSERT INTO "positions" VALUES ('O8','Handshake Position','Screen Shot 2022-10-23 at 10.57.01 PM.png','open',NULL);
INSERT INTO "positions" VALUES ('O9','Reverse Crosshold Position','Screen Shot 2022-10-23 at 10.57.19 PM.png','open',NULL);
INSERT INTO "positions" VALUES ('O11','Crossed Parallel Hold','Screen Shot 2022-10-23 at 11.01.24 PM.png','open',NULL);
INSERT INTO "positions" VALUES ('O12','FSD LIB Parallel Hold High','Screen Shot 2022-10-23 at 11.01.51 PM.png<div> Screen Shot 2022-10-23 at 11.02.05 PM.png Screen Shot 2022-10-23 at 11.02.16 PM.png-</div>','open',NULL);
INSERT INTO "positions" VALUES ('O13','FSD LIB Cross Parallel Hold High','Screen Shot 2022-10-23 at 11.02.49 PM.png','open',NULL);
INSERT INTO "positions" VALUES ('B1','Butterfly FSD LIF - Low and High','Screen Shot 2022-10-23 at 11.03.00 PM.png<div> Screen Shot 2022-10-23 at 11.04.54 PM.png-</div>','butterfly',NULL);
INSERT INTO "positions" VALUES ('B2','Butterfly FSB LIB&nbsp; - Low and High','Screen Shot 2022-10-23 at 11.04.15 PM.png- Screen Shot 2022-10-23 at 11.03.32 PM.png-','butterfly',NULL);
INSERT INTO "positions" VALUES ('B3','Butterfly FEO','Screen Shot 2022-10-23 at 11.05.18 PM.png','butterfly',NULL);
INSERT INTO "positions" VALUES ('B4','Butterfly FOD','Screen Shot 2022-10-23 at 11.05.31 PM.png','butterfly',NULL);
INSERT INTO "positions" VALUES ('B5','R Half Butterfly L Self Neck Loop LIF - Low and High','Screen Shot 2022-10-23 at 11.05.47 PM.png','butterfly',NULL);
INSERT INTO "positions" VALUES ('B6','L Half Butterfly R Self Neck Loop LIF - Low and High','Screen Shot 2022-10-23 at 11.10.26 PM.png Screen Shot 2022-10-23 at 11.09.29 PM.png','butterfly',NULL);
INSERT INTO "positions" VALUES ('B7','R Half Butterfly FSD LIB - Low and High','Screen Shot 2022-10-23 at 11.11.37 PM.png','butterfly',NULL);
INSERT INTO "positions" VALUES ('B8','L Half Butterfly FSD LIB - Low and High','Screen Shot 2022-10-23 at 11.11.50 PM.png','butterfly',NULL);
INSERT INTO "positions" VALUES ('B9','Butterfly LOL','Screen Shot 2022-10-23 at 11.12.01 PM.png','butterfly',NULL);
INSERT INTO "positions" VALUES ('B10','Butterfly LOR','Screen Shot 2022-10-23 at 11.12.45 PM.png','butterfly',NULL);
INSERT INTO "positions" VALUES ('HL1','Hammerlock Position','Screen Shot 2022-10-23 at 11.13.00 PM.png','hammerlock',NULL);
INSERT INTO "positions" VALUES ('HL2','Reverse Hammerlock Position','Screen Shot 2022-10-23 at 11.13.11 PM.png','hammerlock',NULL);
INSERT INTO "positions" VALUES ('HL3','Half Hammerlock&nbsp;','Screen Shot 2022-10-23 at 11.13.23 PM.png','hammerlock',NULL);
INSERT INTO "positions" VALUES ('HL4','L to L Hammerlock','Screen Shot 2022-10-23 at 11.13.36 PM.png','hammerlock',NULL);
INSERT INTO "positions" VALUES ('HL5','R to R Hammerlock','Screen Shot 2022-10-23 at 11.14.08 PM.png','hammerlock',NULL);
INSERT INTO "positions" VALUES ('HL6','L to R Hammerlock','Screen Shot 2022-10-23 at 11.14.20 PM.png','hammerlock',NULL);
INSERT INTO "positions" VALUES ('HL7','Crosshold Hammerlock','Screen Shot 2022-10-23 at 11.14.34 PM.png','hammerlock',NULL);
INSERT INTO "positions" VALUES ('HL8','Reverse Crosshold Hammerlock','Screen Shot 2022-10-23 at 11.14.48 PM.png','hammerlock',NULL);
INSERT INTO "positions" VALUES ('HL9','R to R Hammerlock SBS LOL','Screen Shot 2022-10-23 at 11.15.09 PM.png','hammerlock',NULL);
INSERT INTO "positions" VALUES ('HL10','L to L Hammerlock SBS LOR','Screen Shot 2022-10-23 at 11.15.26 PM.png','hammerlock',NULL);
INSERT INTO "positions" VALUES ('HL11','Closed R to R Hammerlock SBS LOL','Screen Shot 2022-10-23 at 11.15.47 PM.png','hammerlock',NULL);
INSERT INTO "positions" VALUES ('HL12','Closed L to L Hammerlock SBS LOR','Screen Shot 2022-10-23 at 11.16.02 PM.png','hammerlock',NULL);
INSERT INTO "positions" VALUES ('W1','Wrap FSD LIF','Screen Shot 2022-10-23 at 11.17.24 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('W2','Shoulder Wrap FSD LIF','Screen Shot 2022-10-23 at 11.17.45 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('W4','Wrap FSD LIB','Screen Shot 2022-10-23 at 11.18.46 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('W5','Cuddle LOL','Screen Shot 2022-10-23 at 11.19.03 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('W6','Cuddle LOR','Screen Shot 2022-10-23 at 11.19.28 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('W7','Crosshold Shoulder Wrap','Screen Shot 2022-10-23 at 11.20.28 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('NL1','R Neck Loop','Screen Shot 2022-10-23 at 11.20.39 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('NL2','L Neck Looo','Screen Shot 2022-10-23 at 11.20.52 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('NL3','R Self Neck Loop, LIF','Screen Shot 2022-10-23 at 11.21.07 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('NL4','L Self Neck Loop, LIF','Screen Shot 2022-10-23 at 11.21.20 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('NL5','Leader R self Neck Loop','Screen Shot 2022-10-23 at 11.22.04 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('NL6','Leader L Self Neck Loop','Screen Shot 2022-10-23 at 11.22.15 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('NL7','R to R Self Neck Loop, LIF','Screen Shot 2022-10-23 at 11.22.27 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('NL8','L to L Self Neck Loop, LIF','Screen Shot 2022-10-23 at 11.22.37 PM.png','wrap',NULL);
INSERT INTO "positions" VALUES ('AH1','R Arm Hook','Screen Shot 2022-10-23 at 11.22.48 PM.png','hook',NULL);
INSERT INTO "positions" VALUES ('AH2','L Arm Hook','Screen Shot 2022-10-23 at 11.22.59 PM.png','hook',NULL);
INSERT INTO "positions" VALUES ('AH3','Angled R Arm&nbsp;','Screen Shot 2022-10-23 at 11.23.14 PM.png','hook',NULL);
INSERT INTO "positions" VALUES ('AH4','Angled L Arm','Screen Shot 2022-10-23 at 11.23.34 PM.png','hook',NULL);
INSERT INTO "positions" VALUES ('AH5','R to R Arm Hook','Screen Shot 2022-10-23 at 11.23.47 PM.png','hook',NULL);
INSERT INTO "positions" VALUES ('AH6','L to L Arm Hook','Screen Shot 2022-10-23 at 11.24.06 PM.png','hook',NULL);
INSERT INTO "positions" VALUES ('M1','Closed Position','Screen Shot 2022-10-23 at 11.24.18 PM.png','misc',NULL);
INSERT INTO "positions" VALUES ('M2','Half Closed Position','Screen Shot 2022-10-23 at 11.24.29 PM.png','misc',NULL);
INSERT INTO "positions" VALUES ('M3','Sombrero LOR','Screen Shot 2022-10-23 at 11.24.43 PM.png<div> Screen Shot 2022-10-23 at 11.26.05 PM.png-</div>','misc',NULL);
INSERT INTO "positions" VALUES ('M4','Sombrero LOL','Screen Shot 2022-10-23 at 11.25.13 PM.png Screen Shot 2022-10-23 at 11.25.22 PM.png','misc',NULL);
INSERT INTO "positions" VALUES ('M5','FSD LIF Same Hand','Screen Shot 2022-10-23 at 11.26.25 PM.png','misc',NULL);
INSERT INTO "positions" VALUES ('O10','Reverse Handshake Position','Screen Shot 2022-10-23 at 10.59.55 PM.png','open',NULL);
INSERT INTO "positions" VALUES ('B0','Butterfly FSD LIB',NULL,'butterfly',NULL);
INSERT INTO "vocab" VALUES ('CBL','Cross Body Lead',NULL);
INSERT INTO "vocab" VALUES ('CB','Cross Body',NULL);
INSERT INTO "vocab" VALUES ('CBT','Cross Body Turn',NULL);
INSERT INTO "vocab" VALUES ('CW','Clockwise',NULL);
INSERT INTO "vocab" VALUES ('CCW','Counter Clock Wise',NULL);
INSERT INTO "vocab" VALUES ('Right Turn','Clockwise',NULL);
INSERT INTO "vocab" VALUES ('Left Turn','Counter Clockwise',NULL);
INSERT INTO "vocab" VALUES ('RH','Right Hand',NULL);
INSERT INTO "vocab" VALUES ('LH','Left Hand',NULL);
INSERT INTO "vocab" VALUES ('FRH','Follower Right Hand',NULL);
INSERT INTO "vocab" VALUES ('LLH','Leader Left Hand',NULL);
INSERT INTO "vocab" VALUES ('FLH','Follower Left Hand',NULL);
INSERT INTO "vocab" VALUES ('RS','Right Shoulder',NULL);
INSERT INTO "vocab" VALUES ('LS','Left Shoulder',NULL);
INSERT INTO "vocab" VALUES ('LRS','Leader Right Shoulder',NULL);
INSERT INTO "vocab" VALUES ('FRS','Follower Right Shoulder',NULL);
INSERT INTO "vocab" VALUES ('LLS&nbsp;','Leader Left Shoulder',NULL);
INSERT INTO "vocab" VALUES ('FLS','Follower Left Shoulder',NULL);
INSERT INTO "vocab" VALUES ('RHS','Right Hand Side',NULL);
INSERT INTO "vocab" VALUES ('LHS','Left Hand Side',NULL);
INSERT INTO "vocab" VALUES ('LRHS','Leader Right Hand Side',NULL);
INSERT INTO "vocab" VALUES ('FRHS','Follower Right Hand Side',NULL);
INSERT INTO "vocab" VALUES ('LLHS','Leader Left Hand Side',NULL);
INSERT INTO "vocab" VALUES ('FLHS','Follower LHS',NULL);
INSERT INTO "vocab" VALUES ('FEO','Facing Each Other',NULL);
INSERT INTO "vocab" VALUES ('FSD','Facing Same Direction',NULL);
INSERT INTO "vocab" VALUES ('FOD','Facing Opposite Direction',NULL);
INSERT INTO "vocab" VALUES ('LIF','Leader in Front',NULL);
INSERT INTO "vocab" VALUES ('LIB','Leader in Back',NULL);
INSERT INTO "vocab" VALUES ('SBS','Side by Side',NULL);
INSERT INTO "vocab" VALUES ('LOL','Leader on Left -&nbsp; Follower on the right',NULL);
INSERT INTO "vocab" VALUES ('LOR','Leader on the right - Follower on the left',NULL);
INSERT INTO "vocab" VALUES ('R/L','Right over left',NULL);
INSERT INTO "vocab" VALUES ('L/R','Left over Right',NULL);
INSERT INTO "vocab" VALUES ('RH/LH','Right Hand over Left Hand',NULL);
INSERT INTO "vocab" VALUES ('LH/RH','Left Hand over Right Hand',NULL);
INSERT INTO "vocab" VALUES ('LRH/LLH','Leader Right Hand over Leader Left Hand',NULL);
INSERT INTO "vocab" VALUES ('LLH/LRH','Leader Left Hand over Leader Right Hand',NULL);
INSERT INTO "vocab" VALUES ('FRH/LLH','Follower Right Hand over Leader Left Hand',NULL);
INSERT INTO "vocab" VALUES ('FLH/LRH','Follower Left Hand over Leader Right Hand',NULL);
INSERT INTO "vocab" VALUES ('L to R Hold','Leader Left Hand to Follower Right Hand',NULL);
INSERT INTO "vocab" VALUES ('R to L Hold','Leader Right Hand to Follower Left Hand',NULL);
COMMIT;
