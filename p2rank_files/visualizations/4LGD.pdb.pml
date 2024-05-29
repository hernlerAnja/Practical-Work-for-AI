
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/4LGD.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/4LGD.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [6086,6183,6391,6083,8180,6721,6855,6719,7134,7135,7136,7149,8186,8187,8191,8192,7262,7982,7261,8025,7222,7211,8026,7260,6854,7182,7185,10318,6107,6182,6184,8193,6424,6657,6656,6658,7100,6422,6423,7101,6597,6596,6654,6655,6593,6670] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [17470,17566,17567,17568,17775,18519,18520,18104,18105,17806,17807,17808,18484,17980,18485,18054,19576,19582,19577,18037,18103,17530,18038,18039,18040,18041,18042,17981,17977,18036,17467,17484,17485,17490,17492,17493,17505,17468,19409,19564,18566,18533,18580,19366,18595,19410,18569,18645,21702] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [616,851,2385,2386,2387,850,852,787,846,859,864,915,1295,860,376,377,378,1329,1330,1361,585,1294,617,618,340,791,1415,1416,1455,2176,4512,278,280,302,303,277,300,301,2219,1343,1376,2220,1405,1379] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [12186,25009,25011,22366,25010,12113,24768,22285,22350,24765,12128,12129,12132,12133,22288,22289,22290,25068,22287,22286,12115,24939,24936] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [5409,5490,22867,22868,22869,22793,22926,5410,5411,5412,5413,5414,6488,6545,22849,6562,6563,6616,6566,22796,22791,22794,22626,6543] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [1108,1109,1110,1111,1112,1113,536,537,465,467,519,1152,178,179,180,464,466,468,31,32,1107,1312,1313,1106,43,45,1151,570] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [11994,11992,12669,12670,12240,12425,13594,12702,12704,12705,12462,12463,13761,13749,13755,12227,13762,12228,12226,12288,12290,12291,12289,12236,12166,12167] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [12786,13595,12754,12780,12781,12830,15887,12718,12751,13594,12705,11752,11753,11754,11994,11993,12736,12738,12765,11788,11961,11718,11719,11766,11784,11751,11767,11709,13761,13749,13762] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [807,734,736,737,739,753,755,810,11108,11183,11187,11189,23624,23623,23547,23551,23552,23553,23549,684,1252,23603,23605,23606,1251,809,23396,23424,23426,23397,23399,23503,11171,11173,11172,756,757] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [17927,17942,17943,17946,17947,18000,17950,24184,23942,16784,16865,17929,24109,24110,16789,24183,24185,24242,17997,17999] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [14831,14845,15275,15277,15278,15279,15273,9426,15300,15274,9554,9564,9565,9507,9509,9510,9511,9568,9570,9555,9513,15299,14216,9348,9556,9428,9427,9618,9616] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [24428,24426,24506,24508,24509,24510,24505,24507,16196,16197,16198,16522,24453,24454,24455,16401,16403,24429] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [4819,4821,4822,4823,4818,4820,23190,23192,23193,23194,23189,23191,5028,4774,5024,5026,5146,23137,5147] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [13325,13327,14306,14307,13324,13339,15401,15391,15392,15393,15411,15416,13267,13269,13271,14318] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [4013,4016,4018,2931,2943,2932,1952,4026,1950,4036,4041] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [9824,9847,9819,9822,8749,7758,7756,8737,8738,7754,7755] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [13633,13661,11916,12723,13711,13712,12373,12444,13683] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        