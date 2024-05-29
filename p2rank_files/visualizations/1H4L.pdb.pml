
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
        
        load "data/1H4L.pdb", protein
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
 
        load "data/1H4L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2321,2324,2325,2353,2354,2355,2463,2849,3350,3249,3349,3351,2824,2825,2695,3264,3343,3344,2874,2879,2881,3236,2878,2866,2867,2854,2860,2855,3265,2477,2479,2826,2828,2830,2847,2834,2851,2326] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [78,81,638,635,82,604,606,608,611,623,624,631,1107,993,1101,1108,1022,1100,452,591,1021,230,233,236,229,583,585,587,581,582,223,224,111,112,220] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [654,2937,655,998,1259,1278,1280,982,2903,2904,2905,2906,2907,1277,1264] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2339,261,263,264,2504,2506,2338,260,277,278,97,99,103,105,96,241,2484,2507,2789,2342,2348,2317] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [657,661,664,662,663,3502,3507,3519,694,3518,3520,3521,3523,2897,2898,3241,3534] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [5251,288,1130,293,83,84,89,90,91,92,93,237,311,312,1120,1121,1122,1124,1107,1005,1105,964] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3207,3372,3373,3374,2326,2327,2536,2531,2554,2555,74,6443,3364,2480,2333,2334,2335,2336,3350,3348,3363] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3992,3993,4368,3997,3961,3945,4338,3941,3942,3943,3949,4333,4337,4339,4343,4330,4332] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1325,1380,2108,2117,1374,2109,1391,1323,1361,1811,1812,1813,1763,1766,1778,1779,1780,1781] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [2087,2096,2100,2125,2076,2082,2090,1700,2056,2094,2095,1699,1706,1752,1753,1750,1698,1754] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3424,6777,6779,6780,6786,6809,6810,6811,6812,6813,6814,6107,5679,6103,6106] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1195,4924,4925,4904,4905,1188,1184,1179,5233,5234,1174,4918,1189,4926] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3,23,45,4,22,1,2,559,561,26,503,520,246,560,47,227,40] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        