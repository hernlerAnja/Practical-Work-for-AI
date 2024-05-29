
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
        
        load "data/5IXD.pdb", protein
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
 
        load "data/5IXD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [160,163,190,2698,2714,2715,283,275,278,280,286,2801,2619,2723,2792,2716,2717,2720,2721,2745,261,287,288,254,259,2800,2976,2971,2974,2973,2965,2934,2942,2784,2936,2938,2935,2941,255,2947,285,571,572,301,2523,2524,415,418,419,420,2525,2526,2699,2551,289,2581,2582,2583,2584,2585,181,182,310,313,400,2580,2620,3264,2617,2628,3261,3262,3265] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [918,924,927,917,919,389,391,1807,330,332,369,1791,1792,1793,1794,1795,1796,1771,1797,1790,1800,1803,1804,1779,1762,1784,1786,538,540,851,882,884,394,577,546,579,1788,554] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2976,2974,3033,3065,3067,3066,2973,3032,2734,2770,3145,3004,3142,2779,2780,2942,2941,162,190,2712,2713,2714,2709,2737,2735,2711,2733,2741,189,168] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3234,3235,3214,3239,2835,2861,2862,2865,3201,2831,2832,2808,2809,2788,2629,3248,3249] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1273,1138,1289,1291,1287,1139,1140,1141,1241,1277,1278,864,42,858,859,860,862,863,865,899,1240,59,60,63,1142,1143,1144] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3017,3161,3162,3004,3144,3169,3001,3003,3069,3070,3071,2918,2898,2917] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [839,834,842,863,836,864,1130,1135,1138,1140,1132,1163,1164,58,803,805,59,63,64,1142,1671] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [389,391,1807,1825,2502,1811,1823,330,2483,382,369] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        