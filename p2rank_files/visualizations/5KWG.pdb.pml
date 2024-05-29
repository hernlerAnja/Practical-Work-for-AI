
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
        
        load "data/5KWG.pdb", protein
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
 
        load "data/5KWG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6824,6826,6699,6742,6746,6747,6829,6601,6214,6245,6247,6230,6698,6202,6215,5685,6508,6877,6724,6744,6794,6449,6450,7415,7416,7417,6391,6392,6394,6396,6397,5971,6023,5687,5923,5688,5185,5184,5214,5216,6371,6368,6370,5873,6317,5874,5728,5726,5967,5626,5624,5627,5919,5921,5922,5916,5578,5968,5964,7012,6569,6575,6578,6898,7013,6986,6600,6598] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [1746,1748,1749,1469,1750,1752,1999,994,1496,1497,1751,1126,1125,1127,993,1544,1694,2104,1158,1787,1466,1468,2807,2238,1963,2240,579,613,957,1279,1456,1842,1888,1890,2292] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [8198,10421,10423,8186,8197,8199,8187,8346,11432,11434,11831,11368,11453,7903,8225,8226,8240,10363,10364,10354,10355,10341,8242,8244,11832,8238,8237,10499,10500,10340,10343] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [1,6,40,4113,537,538,539,542,4006,4008,4010,24,37,39,4023,508,883,4042,4041,4030,4125,4147,4166,4167,4112,4165,4298,4299,60,64,65,66,6162,6966,6967,6968,6970,6941,418,6167,6169,51,6984,6532,6533,6539,6069,6541,6542] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [4919,4984,5394,4986,5531,5532,5476,5294,5296,5392,5410,5425,5477,5039,5037,5773,5216,5217,5215,5213] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5147,4316,4327,4330,4331,4340,4408,4709,4711,4713,5144,4710,4712,4774,4779,4780,4781,4782,5145,5146,5645,6074,5148,4418,4422,4425,5149,5150,4295,4312,4317,4339,4637,4763,4764,5643,5644] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [150,1378,1380,1398,974,1511,1980,1010,1513,1514,1485,1379,1494,151,153,152] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [4828,4751,4867,5669,5670,6096,6097,5172,5668,6134,5201,5706,5708,5233,5234,4883,4737,4735,4750,102,6112,6136,6137,6145,6151] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [6266,6621,6622,6185,6233,5709,6582,212,341,222,172,173,192,209,225,226,6581,277,6186,6152,6268,5710] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [612,292,294,295,594,355,358,357,439,440,417,6170,87,114,339,86,113] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [798,1126,1155,1127,994,665,748,993,1040,1069,749,1158,612,611,579,799,613] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [2238,2235,2236,2237,2239,2806,2807,2194,2197,2195,2176,2190,2129,2164,2196,1842,1890,2292] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [8683,8697,8698,8699,11618,11622,11625,10099,8684,8634,10698,10699,10675,9717,9711,9689,9694,9697,10098,10097,9692,10702] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [358,357,289,612,295,303,293,664,642,628,304,307,309,665,748,1040,749,667] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [5476,5903,5477,5923,5216,5217,5874] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [9624,9681,9678,9606,9621,9595,9594,9579,9591,9795,9797,9610,9148,9213,9214,9124,9578] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [11368,7810,11379,11383,11384,11385,11386,11387,8178,7771,7788,7791,11305,11307,7808,7809,7772,11319,11316,11367,11299,11300,11301,11304,11306] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [11492,11407,7572,11466,11383,11385,11387,11388,11389,11468,11469,11390,11380,11381,11402,11403,11464,11465,7571,7708,7709,7710,7590,7591,11467,11409] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [8599,9610,9690,9691] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        