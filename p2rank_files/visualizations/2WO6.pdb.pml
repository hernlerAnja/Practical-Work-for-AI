
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
        
        load "data/2WO6.pdb", protein
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
 
        load "data/2WO6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1441,1448,1449,1450,1451,461,462,459,898,333,897,895,279,332,445,902,556,293,294,297,303,305,307,314,281,286,287,316,317,318,331,277,302,308,310,312,1291,1294,311,1472,309,555,1447,1464,548,549,1322,1442,1443,1351,927,916,919,1334,949,275,1310,1311,1323] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3091,3092,3094,3099,4238,3083,3084,3090,3114,3259,4237,4251,3691,4231,4234,4236,3256,3258,3242,3128,3129,3130,3074,3078,3079,3081,3071,3688,3690,3685,3686,3377,3106,3108,3275,3104,3105,3111,3100,3107,3109,3113,3115,4081,4259,4252,5623,5622,3110,3344,4253,4109,3720,3742,4137,3072,4228,3544,4230,3713,3715,4229,4138,3695,3709,3076,3708,3073,4097,4098,4121,4110] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2430,2432,3450,3461,3463,3464,2445,2431,2426,2424,2429,2433,3428,1863,1849,1847,1848,4022,4019,4023,4024,4026,2366,2374,1862,2377,4010,3479,3496,4011,3477,3478,2410,2411,2412,2413,3474,3473,2434,4006,4018] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1874,2332,2333,1862,4279,4278,4299,4300,4301,4015,4022,4040,4041,3429,2299,4025,4026,4031,4280,4276,1860,1861,1994,2267,2273,2298,1993,4284,1895,1968,1969,1970,1966,1967,1965,1867] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1470,1541,1543,1573,1544,1286,1483,1484,1707,1709,1468,576,1471,553] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1608,1610,1611,1327,1621,1622,1588,1619,1309,1326,1605,1606,1590,1601,1824,964,966,968] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2922,3615,3619,3266,2921] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        