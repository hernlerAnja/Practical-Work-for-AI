
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
        
        load "data/4ACD.pdb", protein
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
 
        load "data/4ACD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [228,230,231,232,235,237,4666,1349,1350,372,1345,480,481,473,1352,1358,514,234,240,371,782,370,386,387,388,4893,443,444,392,461,462,210,216,222,239,241,1245,1348,259,1261,1262,1343,1344,204,206,205,208,257,258,355,787,1481,1372,1351,1371,1195,1365,1366,1368,1370,1364,4635,1471,4632,4634,4642,4667,4894,4895,4880,4889,466,469,4884,4886,4872,4874,1384,470,1205,1221,1222,4643,1238,1233,1234,833,814,807,4618,1473,1450,1455,1456,4862,1385,1386,4657,4692] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3028,3036,3022,3037,3038,3041,3043,3045,3046,3047,3065,3176,3177,3178,3011,3016,3012,3063,3064,3019,1818,1837,4011,4028,1828,1836,4178,4051,4154,4155,4156,4157,4170,4171,4172,3287,1812,4027,4040,4044,3010,4150,4148,3588,3161,3320,3589,3394,3593,3599,4039,4149,3639,3620,3613,4068,4067,3606,3014,3031] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4171,4172,3272,3275,3276,3279,3283,3040,3198,3267,4256,4262,4249,4001,4190,4191,4192,3248,1828,4174,4178,1829,4287,3036,3037,3038,3041,1861,2089,1860,3033,3034,2088,2087,2066,2078,4261,4277,4279,2080,2056,2058,3216,3219] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1536,1537,1538,1464,1467,4379,4382,1499,1845,1846,1814,1819,1820,1575,1571,1573,4268,4652,4614,4620,4621,4625,4626,4651,4342,4381,4377,1808,4305,4292,4344,4265,4266,4371] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [184,183,363,28,159,161,266,268,265,269,270,29,652,759,381,671,675,670,182] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2021,2023,4829,2008,2032,2034,2020,2022,1592,4398,4838,1604,1603,4814,4826,4827,4410,4409] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3675,3676,3768,3699,3711,3713,4073,3628,4086,4089,4075,3838,3799,3801,3800,3802,4088] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2834,3187,3483,3458,2835,3168,3565,3477,3476,3075,3076,2988,2989,2990,3072,2965,2967] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [995,969,996,905,907,906,870,869,1031,1032,1269,994,1267,1280,1283,1282] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        