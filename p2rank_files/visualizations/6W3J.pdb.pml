
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
        
        load "data/6W3J.pdb", protein
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
 
        load "data/6W3J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [994,3276,2248,2245,608,609,610,499,500,579,1136,600,602,624,626,1271,490,1200,1270,1319,1323,1321,496,1322,495,3275,1819,1822,1821,1289,1290,1299,1858,1859,1860,577,580,581,582,583,1291,1823,1825,1296,1311,1312,1314,1320,2222,2258,2257,2255,1850,1851,1852,2253,1882,1883,1884,623,1114,1167,1182,1183,990,992,1099,1198,982,983,985,1134] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1777,1794,1795,1796,1798,1799,1826,1825,1301,1302,1776,1275,1280,1288,1781,1783,1785,1786,1779,1782,1765,1772,2258,2218,2109,2187,2186,1778,2037] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3898,3899,3989,4035,4036,4129,4130,4127,4128,4089,3915,3837,4057,4058,4033,4088,4095,3973,3974,4091,4092] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1240,1239,1266,1348,1349,1576,1577,1263,7,8,1562,490,1200,1267,1270,642,472,662,1217,1198,1218] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3555,3554,3556,4554,4553,4583,3773,3776,4587,4588,4591,3757,3846,3844,3847,3690,3754,3674,3545,3551,3568] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3398,3397,3297,3298,706,3320,3162,3163,3164,3165,3166,3167,3168,3386,3387,943,3283,3284,764,1015,1016,1017,1018,3287,3288] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [968,237,238,239,241,249,812,818,823,934,899,849,850,851,884,967] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [4117,3785,3787,4119,4145,4106,4143,4144,3639,3640,3641,3642,3643,3644,3645,4107,3807,3809] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [618,1158,136,140,141,128,135,162,129,593,521,523,505,502] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [305,1433,1435,1470,1430,1431,1432,1467,123,125,1479,1394,1422,1473] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1641,1642,1643,1644,1645,1646,1608,1618,1614,1617,33,29,1610,43,83,82] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1809,2427,2391,2070,2071,1817,2547] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        