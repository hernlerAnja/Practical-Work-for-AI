
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
        
        load "data/5N7G.pdb", protein
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
 
        load "data/5N7G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2332,2333,2334,4681,4795,4796,2302,2262,1938,1940,2260,2263,2295,1967,1969,1990,1991,1970,2323,2324,1937,1963,1964,1966,2002,2003,2004,2005,2331,4856,4865,4656,4623,4823,4824,4825,4829,4830,4832,4791,4646,4678] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1662,2726,2727,1635,1660,1663,1648,1657,1628,1669,1974,2014,2015,2016,2358,1978,1636,2670,2357,2690,2691,2699,2692,2356,2039] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2159,2274,4706,4709,4705,4739,4740,4741,2124,2127,2334,4679,4681,4795,4794,2301,2302,4770,4714,4773,2308,2134,2101,2343,4675] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [452,453,454,875,745,746,744,460,458,463,465,757,848,860,752,750,751,1172,881,895,1170,1171,1173,1130,1131,1137,879,876,1142,1145] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2027,2041,2336,2346,2350,2351,2023,2329,2073,2102,2341,2371,2372,2070] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2751,2686,2775,2778,2817,2687,2776,2662,2663,1579,1583,1585,2630,2631,2654,2784,2787,2786,1581] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [4423,4425,4426,4143,4478,4479,4414,4118,4092,4098,4121,4480,4151,4117,5125,5128,4447,4448,4149] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4545,4893,4894,4896,4592,4593,4863,4868,4864,4865,4622,4576,4581,4588,4873,4892,4549,4563,4564] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3074,3075,3033,3034,3125,3315,3327,3330,3331,3333,3326,3139,3313,3037,3038] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [5621,5688,5690,5691,5714,5715,5678,5679,5639,5328,5330,5355,5357,5358] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        