
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
        
        load "data/6CQ0.pdb", protein
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
 
        load "data/6CQ0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [174,176,300,301,624,123,128,129,130,131,126,175,284,122,124,127,668,673,699,1035,1168,1057,1058,1059,1166,1167,648,645,664,665,650,628,1174,1175,1173] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1800,1806,1812,1815,2246,1798,1799,2673,2674,2675,2807,3073,3074,3086,3104,3128,3103,2809,1817,1781,1794,1848,1823,2812,2234,2236,2226,2227,2222,2800,2217,2220,3137,2802,1821,1822] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [358,370,372,374,1175,1188,1189,1190,156,317,1187,1180,1183,1185,397,1186,1177,1179,1182,1192,1193,1194,607,491,490,301,623,1165,471,395,488] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1838,823,1870,2094,2095,855] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1917,1251,1253,1255,1300,1250,1252,1957,1958,1933,1254,1984,1312,1313,1308,1310,1316] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1663,1456,1381,1383,1651,1652,1425,1772,1775,1749,1777,1420,1421,1410,1408,1409,1776] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [279,49,58,59,221,223,524,247,615,496,507,498,500,260] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4394,4402,2823,3054,2825,3084,3052,2850,3028,3030,3058,3061,4367,2832,2839,2842,2843,2847,2851,2860] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [967,973,977,978,979,1305,1306,1307,938,2007,2009,901,902,903,904] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1391,1393,1023,1024,689,691,1224,1223,1225,1428,1429,1234,1236] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        