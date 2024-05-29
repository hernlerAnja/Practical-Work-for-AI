
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
        
        load "data/6QJ7.pdb", protein
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
 
        load "data/6QJ7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1430,1432,346,347,491,492,650,651,1431,1445,1456,490,369,508,352,343,345,348,321,322,350,351,759,894,896,1423,687,686,488,625,1326,1429,1302,1303,1458,1425,1424,305,317,2905,304,311,367,314,316,475,912,918,2598,2600,2596,368,306,308,946,948,1314,1315,2911,1342,1343,2927,2931,2930,2948,335,325,591,2920,2923,2925] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1116,1117,2495,2496,2497,1076,1078,2488,2489,980,2498,2499,2500,2501,2486,2487,978,1045,1047,1043,1048,977,1018,1019,1020,1021] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [45,2307,12,13,17,21,22,725,59,46,47,48,50,2426,1160,2406,2407,2391,2427,727,2428,2429,2431,1156,1186] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1210,1212,1214,1729,1732,1211,2242,2265,2268,1180,1218,1182,1184,1187,1219,2272,2273,1698,2237,1696,2230] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        