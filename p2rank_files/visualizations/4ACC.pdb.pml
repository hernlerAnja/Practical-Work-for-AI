
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
        
        load "data/4ACC.pdb", protein
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
 
        load "data/4ACC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1818,1837,4011,4157,4178,4155,4156,1829,4287,4174,4177,3028,3037,3038,3041,3043,3045,3177,3178,3022,3047,3046,3016,3019,3063,3065,4170,4171,4172,3275,3276,4001,4262,4192,3040,3176,3248,3198,3267,1812,4042,4043,4027,4028,4044,3010,3287,3589,3320,3161,3588,4040,4051,3639,4039,4067,4068,4148,4149,4150,4154,3011,3012,3014,3064,3606,3620,3593,3599,3613,1826,1836,1860,3036,1827,1828,3031,3033,1861,3034,2084,2087,2088,2089,2073,4277,2066,2078,2080,4279,4261,2056,2058,3219,3250] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [4633,4634,230,4631,4632,4642,4667,4666,1366,1372,1349,1350,1345,1368,1364,1365,469,470,4893,4894,4895,4872,4879,4880,4889,442,444,4624,1205,1222,4615,4643,1245,1348,1351,210,240,241,259,235,238,1233,1261,1262,1343,372,1342,1344,782,257,204,206,208,258,355,787,216,222,225,227,231,461,386,387,370,371,460,477,480,514,228,232,234,392,1234,833,821,814,807,1481,1370,1450,1455,1456,4864,1195,1384,1385,1386,4657,1471,4884,4886,1473,4862,4655,4661,4692] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4387,4814,4838,4826,4827,4828,4829,4268,4396,4398,1603,1604,1462,1590,1592,1581,2032,4410,2022,2021,2008,2023,4409] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4652,4620,4621,4625,1464,1467,4626,1499,4614,1846,1536,1537,1538,4270,4273,1573,4379,4268,1814,1819,1820,1571,1575,1845,4651,4342,4344,1808,4305,4266,4371,4292] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [759,670,671,159,161,652,381,28,29,265,270,184,269,363,266,268] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [994,995,996,2548,1282,869,905,906,907,969,870,1267,1269,1032,1274,1280,1283] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3187,3565,3485,3476,3477,2990,3072,3074,3075,3076,2988,3168,2835,2965,2967,2834,3458] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3676,3675,3629,4086,4089,3838,3711,3713,3800,3801,3802,4088] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [5195,3942,3944,5186,5188,5495,3941,5177,5166,4443,4435,4436,4438,4442,4440,4444,4445,4448,5496] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        