
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
        
        load "data/6BOE.pdb", protein
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
 
        load "data/6BOE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [131,153,154,155,603,280,124,122,123,128,129,130,127,624,627,628,619,621,623,126,607,263,643,644,647,1036,1037,1038,1014,452,1146,1147,629,1152,1154,652,678,633] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2196,3115,2776,2784,3080,2783,2785,2788,2790,2797,2213,2216,1785,778,1775,1776,1782,1787,1791,3079,3049,3050,3062,1770,1792,1793,1794,1818,1764,1751,2789,2794,2204,2206,2192,2197,3113,2647,2649,2650,3104,2648,2651,2646] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [376,1159,1144,1149,1156,451,452,1142,1146,450,1166,373,400,403,602,467,469,470,586,280,351] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1296,1887,1221,1223,1225,1270,1278,1222,1224,1930,1922,1927,1928,1903,1912,1953,1954] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1351,1353,1380,1403,1621,1622,1633,1747,1746,1742,1745,1748,1760,1719,1720,1631,1632,1649,1697,1700,2811,2812,2813,1426,1378,1390,1391] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [4358,4359,2826,3006,3028,3004,2808,2815,2816,2818,2823,3030,4384,4386,4424,3033,3034,3037,4394,3060,2801,2799] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [475,479,473,474,477,486,594,49,58,200,202,503,227,239,258] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [670,1193,1194,1003,1204,668,1009,1010,1398,1363,1206] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3066,3093,3931,3921,4415,3924,3870,4416] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        