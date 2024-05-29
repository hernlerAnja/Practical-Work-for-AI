
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
        
        load "data/5J1V.pdb", protein
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
 
        load "data/5J1V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3909,4150,3866,3867,3868,3869,3885,3886,3063,4152,4153,3897,3898,3899,3902,3521,3546,3547,4168,4174,2923,2924,2893,2894,2896,2899,2906,2909,3077,3078,2918,2919,2921,3128,3130,3153,3125,3119,4283,4143,4144,4145,3061,3925,2942,2943,2944,3926,2890,3507,3520,2888,2891,2887,2892,3548,3183,3475,3477,3478,3062,3047,3502,3482,3500,3501,3496,3499,3472] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [196,197,198,199,201,408,202,340,341,755,750,751,753,222,220,221,170,171,166,168,760,325,772,165,164,177,184,397,406,403,431,1446,429,430,1444,432,461,433,436,356,355,1428,1421,1422,1423,1424,1175,1203,1204,614,780,774,777,785,826,787,794,1145,1146,1147,1163,1164,1431,1176,1177,1180,1187,1429,1430,1452,1445,1561] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [6634,6622,6650,6863,6864,6865,6651,5648,5649,5669,5618,5619,5621,5668,6198,6200,5772,6197,6061,6273,6241,5611,5613,5617,5612,5616,5615,6232,6221,6224,6873,6870,5788,6201,6203,6202,6866,5624] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [5803,5850,5878,5643,5645,5644,5646,6886,6894,6591,6594,6873,6872,6887,5802,5788,5786,5883,5787,5880,5908,6888,5844,5853,5855,6592,6593,6611] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5887,5888,5923,5926,5889,5890,3784,3310,3311,3312,3811,3812,3818,3819,3820,3779,3782,3777,5360] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [7084,7086,7116,7040,7041,7115,6967,6980,6986,6583,7114,7010,7014,7151,7013,6586,6584,6585] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1575,1577,1587,813,884,815,817,1179,1180,1788,1842,1843,1824,1826,1827,845,844,1588] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [5826,5827,2124,2125,2142,2143,2152,5856,2100,2102,2103,5810,5812,2055,2057,2059,2049,2052,5840,2075,2128] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [2350,2288,2289,2290,2291,1834,1836,2348,1867,1868,1847,1840,1832,2260] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1348,1353,1354,871,908,1341,1345,1352,903,898,913,918,919,946] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [7013,7337,7292,7312,7009,6987,7285,7291,6997,6986] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5336,5952,5955,5958,5335,5959,5960,5368,5370,5345,5347] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [4284,4309,4297,4299,4564,4310,3535,3537,3901,3902,3539] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3625,3630,3632,4067,4063,3635,3640,3641,3612,3619,3620,3668,4075] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        