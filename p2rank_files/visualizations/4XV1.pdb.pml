
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
        
        load "data/4XV1.pdb", protein
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
 
        load "data/4XV1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [147,148,149,126,129,123,485,627,231,602,622,626,618,620,120,625,640,619,486,597,499,406,581,583,598,407,243,246,245,247,582,495,482,998,1024,1025,1026,1027,1028,1029,651,652,1114,1108,1116,1110,1111,1127,1105,1122,1124,1126,1128,1130] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2395,2506,2489,2492,2050,2051,3039,2148,2149,3030,3031,3033,3034,3041,2289,3045,3038,3040,2535,2948,2949,2950,2952,2953,2954,2923,2394,2507,2316,2315,2536,2133,2527,2529,2132,2528,2534,2549,2032,2033,2049,2511,2531] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2366,2371,2970,3019,3020,3004,607,1045,1047,1095,1053,1055,3003,2403,491,494,2400,462,1079,1078,2980,2972,457] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1056,633,2724,634,635,219,2779,2746,2747,2755,2756,2757,2758,611,1046,1047,612,2371,3004,2370,2378,215,216] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2520,2543,2971,2544,462,470,832,1079,2981,831,2545,830,833,2121,854,799,800,2117,2118,461,469,852] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2485,1984,2000,2139,2443,1965,2462,2156,2157,1987] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [19,2845,26,46,4,2836,2835,2843,195,37,66,67,509] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2261,2263,2449,2450,2266,2270,2268,2296,2433,2435,2437] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        