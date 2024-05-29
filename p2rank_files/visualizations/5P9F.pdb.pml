
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
        
        load "data/5P9F.pdb", protein
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
 
        load "data/5P9F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [556,557,1238,1239,1246,1255,688,689,1240,1243,1245,555,1257,568,1266,1267,1268,1269,1256,476,572,470,693,711,715,1165,1166,714,722,732,293,707,1146,1242,1270,1250,310,187,188,189,307,170,168,308,309,132,134,138,140,149,152,156,736,125,126,128,129,733,1137,1138,744,1151,1152,1140,1141,1112,1115,1305,1271,1361,1363,1365,159] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1272,1273,1274,1364,1365,1441,1442,1431,1379,1373,1358,1369,1100,1103,1275,1569,1487,1480,1433,1435,1570,1568,1566,1549,1465,1464,1596] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [287,580,581,583,585,37,582,584,586,228,229,231,233,234,235,236,579,35,266,267,268,270,271,272,277] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1946,1948,1778,1941,1944,1947,1953,1962,1931,1937,1922,1772,1773,1784,1789,1790,1746,1747,1792,1727,1687,1690] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [782,1200,1202,938,846,869,905,901,902] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        