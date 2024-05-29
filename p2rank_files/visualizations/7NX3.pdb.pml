
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
        
        load "data/7NX3.pdb", protein
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
 
        load "data/7NX3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [11549,11551,16974,16975,20652,18269,18273,18276,18250,18238,18234,18272,18259,18260,18261,16994,18258,18262,18255,16970,16972,16973,16981,16982,18233,11328,18306,18304,11336,11338,11545,11565,11546,18307,11384,10640] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [8306,8308,1475,1476,1479,1480,1454,1459,3138,8303,7397,1525,1494,1497,1490,1493,195,8322,194,193,202,203,8085,8302,1527,1528,8141,8270,1481,1482,1483,3139] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [15095,15103,15104,15125,15126,15206,14086,2993,3010,14085,14088,14089,14091,10900,10901,10899,15140,10842,15142,10826,3034,15093,11773,11856,11859,11784,14378,11824,14379,14500,11818] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [19676,19674,19675,19706,19687,19575,19576,19493,19577,19492,19482,17009,17011,17010,19930,4425,5179,4429,4445,4450,19707,5133,5134,19515,4397,4416] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [5512,4494,5613,5548,5614,7657,5550,7656,7658,7583,5503,8530,8541,8575,4787,8613,8616,8581,4496,4497,4499,4908,19797,19821,19823,5534] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [3143,2728,2919,2920,2790,14008,14011,14017,14037,14042,14007,14771,14725,231,13987,13988,13989,232,2887,2888,2889,2789,14021,14726,14727] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [11383,18307,11384,17777,17722,11514,11515,11516,10671,10672,17803,17779,18305,18306,17842,17720,17840,20625,17818,17821,17834,17839,11483,11401,11484,11393,20626,20628,20630,17877] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [6391,6392,6394,6398,6401,6690,9728,6421,6422,6423,9208,9209,9210,6031,6691,6692,9683,9705,9706,9707] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [942,943,996,1010,8158,8159,8271,8273,8240,8241,7428,7429,8272,1055,3839,1098,3841,3843,1063,1061,1060,3838,7395,1024,1039] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [16056,16058,16028,16029,16299,16027,12451,12452,12453,16325,12437,12438,12436,16326,12124] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [5567,5569,18374,18375,18378,7625,18454,7593,7623,5571,18512,18515,18517,18518,18520,19850,19849,18432,18376,7594,7596] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [7988,8140,8147,8150,1526,1527,1528,8141,8271,8273,1000,942,8158,8159,8018,1638] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [4659,4660,7766,7800,7803,7767,7804,8430,8704,8431,8432,8679,8680,8473,8673,4609,4624,4688,4689,4691,4661,4662,4646,4612] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [5970,5971,5972,6061,7099,7101,6058,8958,8961,6045,6046,8941,8943] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [16147,16144,15834,15833,16226,16228,16146,15389,15378,15406,15407,15804,16190,14972,14973,15377] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [11137,11281,15179,11193,11195,11197,15109,11256,11277,15181,1562,1565,1568] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [3917,3918,10169,3953,8780,8781,3919,8835,8836,8798,64,3952] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [5590,5591,19865,19893,5515,5589,4476,4477,19900,19896,18261,19897,18320] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [1553,15181,3113,14069,15182,15183,3078,3110,15074,15254,15107,15109,14068] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [9160,6060,6065,8939,9128,9129,9130,8938,8958,5970,5971,6067,6075,6079,6082,8940,8942] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [6420,6422,6423,9210,9784,6401,9639,9650,9681,9683,9677,9680,9638] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        