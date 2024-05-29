
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
        
        load "data/6F3G.pdb", protein
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
 
        load "data/6F3G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3336,2966,2969,2973,2974,2998,3360,3361,3437,2926,2942,2946,2945,2953,2959,2965,2940,3337,3344,3325,3326,2469,2468,2470,2471,2474,2500,2501,2502,2588,2448,2449,2451,2936,2466,2467,2454,3007,3037,3045,2406,2916,2918,2920,2921,2917,2919,2915,2603,2604,2600,3439,3442,3436,3438,2819,2820,3443,3445] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [236,265,231,263,264,239,237,251,230,229,1226,1227,1228,366,367,492,700,701,702,703,234,351,725,709,196,232,233,698,699,756,748,749,752,1143,1144,596,728,729,1119,1127,1220,1221,1222,1225,778,781,757,736] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [3825,3810,3817,3818,4097,3869,3870,3871,4058,4060,3845,3858,1646,1631,1633,1632,1647,1649] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1633,1658,1659,1846,1848,1606,1598,1613,3844,3845,3861,3863,1876] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2709,2733,2735,2742,2762,2763,3485,3489,3272] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        