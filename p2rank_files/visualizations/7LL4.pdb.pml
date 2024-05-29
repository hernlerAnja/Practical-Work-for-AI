
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
        
        load "data/7LL4.pdb", protein
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
 
        load "data/7LL4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [683,2664,682,957,2691,2693,881,2738,424,426,312,313,329,330,425,315,316,380,381,398,726,399,400,401,405,406,407,420,824,823,883,891,892,886,331,1495,653,1528,3012,2704,3007,3011,378,382,364,383,385,387,828,2987,826,3000,3001,2974,336,337,357,358,335,2662,2663,2665,2450,2455,2653,2654,2698,2737,2414,1602,1606,2489,1595,1596,2488,1544,1180,1541,1508,2416,2417,2419,2421,2349,2350,3037,3038,2702,2703,3039,2327,2938,2415,1607,1671,1674] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [4639,4655,2128,4663,4613,4625,4628,4635,4642,3313,3286,3309,3298,3293,3297,3299,2196,2197,2198,2855,2859,2113,2130] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [664,471,202,198,200,142,236,237,240,1436,1292,1434,143,442] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3097,3674,3675,3700,3701,3687,3587,3551,3098,1638,1641,2421,3497,3499,3588] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3117,3188,3026,3027,3053,3119,3979,3978,2991,3184,3173,3234,3917] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        