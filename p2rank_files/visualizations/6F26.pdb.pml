
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
        
        load "data/6F26.pdb", protein
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
 
        load "data/6F26.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4124,4126,4204,3804,3808,3809,4125,3859,3861,3864,3871,3751,3752,3763,3764,4122,5357,5363,5366,5367,5369,3766,5352,6258,6684,6685,6134,6135,6136,6682,3877,3934,3936,9010,9012,3932,8976,9008,9009,9011,8972,8975,8973,8974,6671,6666,6668,6678,6184,6185,6186,6242,6254,6240,6241,6243,6311,6251,6255,6256,6312,6129,6200,6133,6071,8723,8724,8804,6120,6123,8803,8977,6075,4121,4120,4076,4079,3879,3872,3875] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [5664,5038,5040,4826,4827,4828,4793,4794,4796,4792,4809,5264,5265,5631,5196,5665,5041,5042,6759,6772,6550,6551,6760,5731,5801,5714,5709,5710,5711,5713,5712,5662,5009,6501,6773,6776,6777,6779,6516] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [434,216,229,251,252,253,230,211,212,673,1073,1039,602,604,463,465,466,467,603,1070,1072,1117,1118,1119,1120,1121,1122,459,433,2167,2184,2185,1139,1909,1958,1959,2168,1157,1209,2187] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4122,4266,5359,5364,5369,5368,5379,6685,5389,5425,5683,5349,6722,6723,5682,4184,4185,4186,4187,4188,6643,6642] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [9102,6658,6583,6594,6567,5741,9079,9077] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4042,4043,4044,2405,2406,2321,2898,2319,2403,1719,1701,1716,1718,4040] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3382,3383,2654,2666,2672,2676,3464,3272,2679,2680] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1149,1221,4517,4519,1975,1991,2066,2068,4542,4541,1148,2002,1996] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1912,1913,2654,1195,1193,1194,2705,2706,2679,2680] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        