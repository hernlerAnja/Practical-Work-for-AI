
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
        
        load "data/Q05513.pdb", protein
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
 
        load "data/Q05513.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3051,3054,3052,2684,3078,4389,4399,4402,4384,3063,3155,3157,3159,3161,3152,3154,2101,2103,2104,2229,2231,2632,3077,3153,2043,2044,2046,4394,4396,2649,2213,2674,2675,2676,2654,2658,2637,2055,2063,2053,2062,2051,4433,4430,4432,2230,2048,4406] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2945,2946,3421,3424,3428,3430,3419,3423,2949,3463,3241,3227,3233,3234,3973,3974,3975,3978,3437,3432,3435,4021,3459,4017,4028,4059,2922,4019,4020,4022,4058,4062,4065,3229,4036,4037,4039,4038,4040,3231,2953,2957,3250,3406,3417,3418,3400] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2079,2081,2353,2357,2359,2075,2063,2066,2071,2072,2087,2230,2084,922,3185,3291,3292,3184,3021,3022,3039,3160,3161,3175,3183,3299,2231] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [982,983,191,932,956,960,899,901,881,887,909,889,140,913,915,738,716,719,720,477,480,138,139,155,190,154,210,919] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [962,732,736,168,963,150,880,883,884,843,844,743,739,752,754,169,170,171,172,173,943,2294,2296,2297,938,2280,931,933,934] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2318,946,949,2350,942,944,945,2081,2083,2352,2353,2354,2357,2359,2341,2342,2347,2348,3276,3286,3185,3184,3270,3271,3014,3198,3200,3205,3190,3177,2380,2382,2383,3206] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [945,2078,2080,2081,2083,2329,2352,2353,2354,2355,2357,2244,2287,2326,2360,2356,2277] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [489,473,636,672,490,492,478,713,720,643,645,638,642,670,704,469,637,695,700] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4709,4702,4703,2527,4731,4669,4707,2162,2164,4670,1954,1955,1956,2146,1935,2526] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1425,1428,1448,1449,1333,1334,1040,1315,1317,1434,1438,1443,1446] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        