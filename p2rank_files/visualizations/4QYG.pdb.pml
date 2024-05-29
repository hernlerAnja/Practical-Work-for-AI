
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
        
        load "data/4QYG.pdb", protein
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
 
        load "data/4QYG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3160,2260,2262,2263,3265,2269,2270,3266,3268,2252,2253,2254,2308,2256,2257,2258,2309,2250,2255,2804,3148,2251,2421,2422,2505,3260,2607,2608,3256,3259,3261,3262,2534,2754,3275,2765,2406,2751,2753,2535,2776,2779,2794,2801,3176,3177,2793,2796,2606] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1116,1117,1120,1031,1114,1111,1115,115,118,117,124,125,1121,1123,276,277,360,659,1003,649,1032,1015,162,163,164,261,608,606,462,463,609,112,106,107,109,110,648,631,634] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2819,3153,2821,2823,3729,3731,3475,3730,2861,3714,3716,2850,2849,2816,3143,2846,3689,3713,3715] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [578,580,600,576,577,579,517,601,77,78,79,267,268,53,54,56,540,539,541,581] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2413,2746,2723,2725,2198,2199,2662,2685,2222,2223,2224,2201,2745,2181] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3160,2263,3137,3117,2270,2271,2273,3266,3268,3120,3448,2274,2277,3267,2288,3282,3283,3284,3288,3289,3290,3291,3264] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1015,975,1136,1137,1139,143,1138,991,992,118,125,1123,276,277,1122,139,1144,1145,1146,126,128,132,133] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1568,1569,1570,1571,1579,1330,1584,1585,1586,1544,676,678,671,701,702,704,705,716,674,998] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        