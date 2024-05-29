
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
        
        load "data/6GLB.pdb", protein
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
 
        load "data/6GLB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2437,2438,2488,2489,2614,2431,2432,2433,2435,2436,3015,3431,3062,3453,3066,3067,3094,3422,3059,3031,3033,3040,2439,2441,2809,2881,3014,3528,3452,3019,3026,3037,2630,2776,3530,3533,3534,3535,3536,3549,3529,2629,2775,3400,3426,3436,3437,2647,2730,2450,2451,2454,2476,2443,2444,3427,2466,2473,2474,3558,3559,3682,2471,2728,2469,2695,3551,3557,3550,2725,2729] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1231,1234,1235,1236,1237,330,331,1229,1230,190,329,510,581,152,142,145,151,176,177,348,174,1153,134,188,189,315,136,137,738,715,727,582,720,741,732,139,140,132,133,138,716,1383,155,172,1258,1259,1260,1250,1252,429,476,426,430,431,163,170,167,396,1123,1132,1137,795,767,768,1154,760,1128,1101,1138] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1955,1956,1922,1948,1790,1911,1972,1965,1970,1971,1730,1758,1755,1791,1413,1578,1581,1888,1416,1921] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3868,4470,4473,4474,4475,4479,4482,4486,4463,4465,4469,3844,3847,4437,4454,3832,3835,3629,3836,3331,3332,3333,3334,3834,3302,3304,3335,3305,4490,4491,1380,1381,1385,160,161,162,171,173,1386,1388] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3712,3715,4029,4271,4089,4090,4057,4054,4220,4187,3877,4269,4270,4255,4264,4254,3880,4221] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1725,1733,1739,783,1689,1704,1705,1432,1644,1647,1687,1690,823,1707,1417,1734,1738,1433,1726,1701,1703,1688,785,1126,1127,1399] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [4037,4038,4024,4025,3427,3731,3732,3943,3946,4032,3425,3426,4000,4004,3989,3994,3986,3987,3988,3082,3084,3698] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1533,1535,1536,1537,1548,997,1005,1032,1033,1035,1003,2180,2183,2192,1034,2174,2175,1569,2171,2176] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1841,3578,3580,1856,3585,3597,3602,3604,3603,1763,1798,1772,1822] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2743,2781,2783,2793,1817,2784,2980,2981,2923,2924,2938,2744,2745] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        