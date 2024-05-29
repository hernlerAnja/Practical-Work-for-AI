
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
        
        load "data/5OTD.pdb", protein
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
 
        load "data/5OTD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3758,3795,3798,3800,3761,3759,3760,3762,3763,4658,4659,4661,3825,3826,4660,3868,3909,4090,4091,4707,4709,4628,4623,4624,4652,3910,4630,4706,4708,4116,4133,4114,4115,4089,3940,4197,3896,3899,4130,3790,3865] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1862,1839,1867,1868,1870,1083,1082,1040,1041,1078,1111,1114,1116,1348,1109,1843,1155,1119,1124,1125,1080,973,970,972,975,977,1004,1005,1302,1304,1305,1306,1918,1329,1345] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [538,539,908,910,435,433,434,1340,1317,1316,951,952,953,390,419,553,554,555,1339,1437,1439,1311,1440,773,775,909,911,774,906,1441,1445,1446,1448,1315,370,378,368,369,374,375,376,380,381,389] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4100,4101,4102,4230,4233,3149,3150,3152,3163,3164,3193,3547,3548,4222,4226,4227,3328,3329,4225,3327,3207,3208,3209,3312,4124,4125,3142,3143,3144,3549,3170,3693,3695,3696] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [274,320,277,280,306,307,308,309,281,4012,4011,491,273,3983,253,3524,801,802,803,807,3523,257,3954,3980,3973,3974,3977,3978,3979,2844,2846,3955,5453,5455,5452,3952,3953] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [409,418,393,396,397,406,390,419,568,554,555,571,636,1317,629,1474,630,1464,1465,1467,1472,1473,666,1446,1447,1448,1284,1300,1315,405] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3505,3506,863,3503,827,3512,585,880,611,612,246,247,267,270,3555,3556,638,607,635,637,605,608,609,610,646,243,249,644] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3167,3170,3180,3171,4257,4258,3345,3178,3179,3404,4069,4100,4102,4233,3164,3193,4232,4396,4085,3173] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4539,4545,4553,4554,4557,2818,2825,2835,5442,5436,5441,5398,5419] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1754,1758,1760,1768,43,44,48,1218,1220,1759,61,2645,2650,1769,1795,51,2639,1772] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        