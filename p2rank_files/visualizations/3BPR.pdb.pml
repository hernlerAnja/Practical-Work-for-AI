
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
        
        load "data/3BPR.pdb", protein
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
 
        load "data/3BPR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [177,179,293,624,308,1080,306,307,604,1079,1081,1163,493,654,132,134,178,619,621,627,1157,1156,663,657,661,662,131,1056,1067,609,602] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [5170,5246,5169,5171,4711,5134,5157,4677,4704,4707,4713,4659,4669,4671,4674,4533,5247,4357,4359,5253,4228,4230,4175,4229,4173,4172,4344,4652,4654] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [7224,7307,6601,6719,7223,7225,6724,6772,6776,6777,7188,7211,7300,7301,6427,6426,6425,6246,6293,6247,6249,6292,6294,6412,6769,6736,6742,6734,6739,6778] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2317,3092,2603,3093,2192,2193,2194,2304,2618,2613,2615,2153,2151,2621,2648,2319,3169,3168,3175,2598,2599,2495,3091,3079,3056,2657,2150,2655,2656,2651] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3703,3454,1691,742,793,1457,1458,1459,795,796,1442,3694,2737,2738,1445,743,740,2790,3470,3471,2787,2789,1682,3469,2734,2735,2733] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1442,842,1440,1443,1739,818,1675,1705,1703,1687,1689,1690,1695,1697] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [6309,4996,4997,6310,5031,5030,4994,4995,5988,4976,6750,6751,6736,6738,6737,6399,6250] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4191,5109,5254,5156,5144,4359,4360,5253,5157,5136,5142,4207,4214] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [6968,6944,7877,7844,7584] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [6758,6759,6750,6838,6839,6841,6842,6843,6907,6812,6814,6762,6764] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [5530,4901,4903,5549,4940,4879,5823,5780,5790,5532,4877] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        