
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
        
        load "data/6W38.pdb", protein
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
 
        load "data/6W38.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2257,499,500,608,610,579,585,624,626,1164,1167,623,609,992,994,1099,1182,1183,1323,1321,1269,1270,1271,1200,1198,490,1822,2255,2258,1852,1884,1823,1825,1296,1320,1860,583,580,1291,1288,1289,1290,1292,1299,1821,2245,2253,2244,2252,2248,1133,1136,600,602,3276,1114] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3297,3298,3319,3320,1015,1016,706,737,703,764,1018,3397,3141,3164,3166,3283,3284,3142,3168,3398,3385,3386,3387] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3989,4033,4057,4035,4036,4088,4089,4127,4128,4095,4094,3837,3915,4092,3899,4129,3898] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2070,2071,2547,2082,2427,1809,1817,2068,2081,2043] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1239,1240,1217,1218,642,1349,662,1577,1269,1270,1267,1268] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [238,239,240,241,242,249,934,967,899,850,849,883,884,865] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [994,2257,610,1826,2186,2187,1825,2220,2218,2258,1291,2248] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [993,994,1099,1269,1271,1268,1200,1238,1240,1085,1061,1084,1060,3292,1008,1009] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [593,521,505,141,502,618,162,136,140,161,1158,1159] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1779,1275,1288,1794,1795,1796,1798,1826,2187,1824,1825,2108,2109,1785,1786,1783,1765,1799,1777,1782] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [29,1608,1610,83,33,82,32,37,38,1644,1640,1641,1642,1643,1645] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [3642,3644,3645,3785,3787,4117,4119,4121,3639,3640,3641,3643,3809,4106,4143,4107,4108,4144,4145] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1394,123,125,305,1430,1467,1473,1479,1422,1432] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2750,3699,3713,4239,4266,4267,3578,4365,2736,2738,4293] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        