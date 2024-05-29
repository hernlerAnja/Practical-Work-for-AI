
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
        
        load "data/7KXP.pdb", protein
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
 
        load "data/7KXP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [218,219,220,338,164,339,199,201,1319,196,748,752,166,167,174,179,180,206,183,203,187,190,192,193,194,170,171,162,163,168,169,340,1252,1253,1257,1258,1259,1260,341,1179,727,1180,1256,1280,726,744,745,700,324,723,685,569,701,705,1160,1151,1152,1153,1154,1155,1164,1166,1165,1126,1129,1284,1285,1369,1371] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [567,568,569,1269,1271,580,701,584,586,497,340,1252,1253,1254,1259,341,1282,685,700,338] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1556,1426,1434,1435,1557,1473,1555,1424,1376,1457,1458,1114,1289,1288,1364,1370,1371,1379,1374,1130,1123,1584,1583,1480] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [318,592,593,595,597,594,596,598,591,262,264,265,267,266,308,297,298] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1671,1674,1711,1952,1730,1927,1753,1754,1731,1732,1770,1771,1773,1934,1936,1937,1938,1942,1931,1935,1943,1928] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [788,1216,917,953,955,948,941,943,944,978,880,922,918,849,1214,1215,1207] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        