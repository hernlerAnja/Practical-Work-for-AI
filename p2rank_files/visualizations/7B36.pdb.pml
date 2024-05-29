
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
        
        load "data/7B36.pdb", protein
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
 
        load "data/7B36.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [101,106,107,113,143,145,144,248,261,646,649,104,105,640,642,644,670,692,1005,1029,1108,1109,1110,264,265,115,119,120,1028,1102,487,628,623,624,621,622,388,389,390,419,607,608,365,363,396,281,1099,1103,387,386,660,661,662,663,656,655,657,2007,2009,2010,2053,1979,2017,2016] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2330,2196,2197,2199,2231,2232,2194,2195,2201,2700,2701,2707,2687,2339,2343,2345,2346,2347,2363,2233,2686,2741,2742,2771,4130,2725,2719,2723,2734,2728,2735,2736,4084,4093,4086,2198,3184,3185,3190,3191,3192,3087,2572,2573,2703,2574,2473,2474,2475,2476,2477,2452,2506,2483,2450,3109,3110,3111,2749,2750] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [3360,3361,3367,3355,3352,2986,2988,3864,3866,3369,3389,1743,1752,3878,1744,2984,2985,2992,2993,2960,3012,3008,1283,1284,1781,1759,1760,1748,1749,1804] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1793,3826,3829,3825,1283,1776,1779,1781,1782,909,881,1275,905,906,907,1787,1792,3367,3355,3369] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1693,1773,1837,1839,1690,1656,1657,1660,1803,1799,1801,1831,1812,1834,1749] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        